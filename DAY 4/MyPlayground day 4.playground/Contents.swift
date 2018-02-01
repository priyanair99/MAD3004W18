//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// closures in swift

//sorted closure
var months = [4,3,1,6,5,2]
print(months.sorted())

func reverse(_ s1: Int, _ s2: Int) -> Bool {
    return s1 > s2
}
var reversedMonths = months.sorted(by: reverse)
print("reversedMonths",reversedMonths)

func increasing(_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
}
var increasingMonths = months.sorted(by: increasing)
print("increasing months : ",increasingMonths)

//closure expression syntax
/*
 
 { (paarmeters) -> return type in
 statements
 }
 
 */

var reverseClosure = months.sorted(by: {
    (s1: Int, s2: Int) -> Bool in
        return s1 > s2
})
print("reverseClosure",reverseClosure)

//inferring parameter types from context
var inferTypes = months.sorted(by: {
(s1, s2) in return s1 < s2
//(s1, s2) in s1 < s2    //implicit return
})
print("inferTypes :",inferTypes)

//shorthand argument names
print("short hand argument :", months.sorted(by: {$0 < $1}))

//operator methods
print("operator methods :", months.sorted(by: <))

var three = [1,3,4,5,8,9,12,15]
print("three :",three)

var modThree = three.filter({ $0 % 3 == 0 })
print("modthree :",modThree)

var two = [1,2,3,4,6,8,7,10,11,12]
print("two :",two)

var modtwo = two.filter({ $0 % 2 == 0 })
print("modtwo :",modtwo)

//nested functions closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0

    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
}

        return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

print("firstcall : ",incrementByTen())  //10
print("secondcall : ",incrementByTen())  //20
print("thirdcall : ",incrementByTen())    //10

let incrementBySeven = makeIncrementer(forIncrement: 7)
print("increment by seven 1: ",incrementBySeven())
print("increment by seven 2 : ",incrementBySeven())

print("fourth call : ",incrementByTen())  //40

//closures are reference type
let incrementBySevenAgain = incrementBySeven
print("increment by seven 3 : ",incrementBySevenAgain())

//Auto closures
var errorList = [404,414,402,431,455,440]
print("Total errors : ",errorList.count)

let debugger = { errorList.remove(at: 0) }
print("Total errors :",errorList.count)

print("Now solving \(debugger())!")
print("Total Errors : ",errorList.count)
print("Error List : ",errorList)

//same behaviour of delayed evaluation can be achieved when you pass a closure

func solve(error debugger: @autoclosure () -> Int){
    print("Now solving \(debugger())!")
}
solve(error: errorList.remove(at: 0))
print("error List : ",errorList)





















