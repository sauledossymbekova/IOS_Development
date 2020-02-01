//
//  Calculator.swift
//  Calculator
//
//  Created by Сауле Досымбекова on 1/25/20.
//  Copyright © 2020 Сауле Досымбекова. All rights reserved.
//
import UIKit
import Foundation

class Calculator {
// MARK: variables
var firstNumber: Double = 0
var secondNumber: Double = 0
var operation: Operation = Operation.empty


enum Operation {
    case empty
    case equals
    case constant(value: Double)
    case unary(function: (Double) -> Double)
    case binary(function: (Double, Double) -> Double)
}

var map: [String : Operation] = [
    "c" : .constant(value: 0),
    "ac" : .empty,
    "=" : .equals,
    "+" : .binary { $0 + $1 },
    "-" : .binary { $0 - $1 },
    "*" : .binary { $0 * $1},
    "/" : .binary { $0 / $1},
    "%" : .unary { $0 * 0.01},
    "sqrt": .unary {sqrt($0)},
    "pi" : .constant(value: Double.pi),
    "ran" : .constant(value: Double.random(in: 0..<99999)),
    "x!" : .unary(function: {a in factorize(n: a)}),
    "x^y" : .binary{ pow($0,$1)}
]

// MARK: - Variables
    public var result: Double = 0
    var lastBinaryOperation: ((Double, Double) -> Double)?
    public  var reminder: Double = 0
    
    // MARK: - Methods
    func setOperand(number: Double) {
        result = number
    }
   static func factorize(n:Double) -> Double{
    
        var number:Int = 1;
        for i in 1...Int(n){
            number *= i;
        }
       return Double(number)
    }
    func executeOperation(symbol: String) {
        guard let operation = map[symbol] else {
            print("ERROR: no such symbol in map")
            return
        }
        
        switch operation {
       
        case .constant(let value):
           result=value
        case .unary(let function):
            result = function(result)
           
        case .binary(let function):
            if lastBinaryOperation != nil {
                executeOperation(symbol: "=")
            }
            lastBinaryOperation = function
            reminder = result
            
        case .equals:
            if let lastOperation = lastBinaryOperation {
                result = lastOperation(reminder, result)
                  reminder = 0
                lastBinaryOperation = nil
              
            }
            
        
        case .empty:
            result=0
            reminder = 0
            lastBinaryOperation = nil
          
        }
}
}
