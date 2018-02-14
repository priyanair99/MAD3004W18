//: Playground - noun: a place where people can play

import UIKit

//final class Employee

class Employee
{
    let MIN_PAY = 11.60
    var a : String?
    
    static var noOfObject = 0
    init() {
        Employee.noOfObject += 1
    }
    static func getNoOfObject() -> Int
    {
        //a = "Test" // Not allowed
        return noOfObject
    }
    func greet(name: String)
    {
        print("Employee :: want to join the team? \(name)")
    }
        deinit {
            print("Employee Deinit")
        }
    }

var e1 = Employee()
print(Employee.getNoOfObject())
e1.greet(name: "Priya")
var e2 = Employee()
print(Employee.getNoOfObject())

class parttime : Employee
{
    override func greet(name: String) {
        print("Part Time :: Want to work full time? \(name)")
    }
    
    deinit {
        print("Part time Deinit")
    }
}

var p1 = parttime()
p1.greet(name: "p1")
//p1.getNoOfObject();  //ERROR

e1 = p1
e1.greet(name: "NAME")

var r1 : Employee
r1 = Employee()
r1.greet(name: "Employee")

r1 = parttime()
r1.greet(name: "Part time")
