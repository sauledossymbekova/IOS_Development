//
//  ViewController.swift
//  Calculator
//
//  Created by Сауле Досымбекова on 1/25/20.
//  Copyright © 2020 Сауле Досымбекова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Calculator()

    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        guard
           
            let numberText = sender.titleLabel?.text
            
                 else
          {
            return
          }
       
                 result.text?.append(numberText)
    }
    
    
    @IBAction func actions(_ sender: UIButton) {
        guard
                let numberText =  result.text,
                let number = Double(numberText),
                let operation = sender.titleLabel?.text
          
            
            else
            {
             return
            }
          
          result.text = ""
        
            model.setOperand(number: number)
                 
            model.executeOperation(symbol: operation)
        
            
           if(testUnary(operanda: operation)){
             result.text = String(model.result)
           }
        
         
             
         }
         //Function for checking  unary operations
         func testUnary(operanda: String) -> Bool
         {
if(operanda != "-" && operanda != "x^y" && operanda != "+" && operanda != "*" && operanda != "/")
         {
             return true
         }
             return false
         }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

