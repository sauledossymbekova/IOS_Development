//Array
// print Even Square and not from 1 to 10
let oneToTen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
/*
var evenSqr : [Int] = []
for x in oneToTen{
    let sqr = x * x
    if sqr % 2 == 0 { evenSqr.append(sqr) }
}
print(evenSqr)
var notEvenSqr : [Int] = []
for y in oneToTen{
    let notSqr = y * y
    if notSqr % 2 != 0{
        print(y,":", notSqr)
        notEvenSqr.append(notSqr)
    }
}
*/
let evenSqr = oneToTen.map{$0 * $0}.filter{ $0 % 2 == 0} //$0 like place holder
print()

//Create an array of every possible pairing

let suits = ["1","2","3","4"]
let ranks = ["A","B","C","D"]
/*
var allPairing : [(String, String)]=[]
for x in suits{
    for y in ranks{
        let pairing = (x,y)
        allPairing.append(pairing)
    }
}
*/
let allPairing = suits.flatMap{ x in ranks.map{y in (x, y)}}
print(allPairing)
 
//Merge Dictioniories

