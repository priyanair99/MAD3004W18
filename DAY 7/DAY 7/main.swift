//
//  main.swift
//  DAY 7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var obj1 = Test()
obj1.n1 = 20
obj1.display()
obj1.displayValue()
var obj2 : IDisplay = Test()
obj2.display()

obj2 = obj1 as Test
obj2.display()

var obj4 = TestB()
obj4.n1 = 30
obj4.n2 = 40
obj4.display()
obj4.displayValue()

var obj3 = obj4 as Test
obj3.display()
obj3.displayValue()

var objArith = Arithmetic(n1: 20, n2:30)
objArith.calculate()

var objOperation = Operation(n1: 30, n2: 25, oper: "*")
//objOperation.calculate()

////using double extension
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"


//using String extension
var s = "Priya"
print(s.length)
print(s.vowels)
print(s.consonants)
print(s.contains(s: "el"))


var k = 100
var h: Bool
h = k.isPrime
if (h == true)
{
    print("Prime")
    
}
else{
    print("Not Prime")
}
