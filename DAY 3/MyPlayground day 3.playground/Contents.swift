//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//dictionaries

var namesOfIntegers = [Int: String]()// namesOfIntegers is an empty [Int: string] dictionary
namesOfIntegers[15] = "priya" //namesofintegers now contains 1 key-value pair
print("namesOfIntegers : \(namesOfIntegers)")

namesOfIntegers[28] = "Twenty Eight"
print("dictionary contains \(namesOfIntegers.count) elements")
print("dictionary: ",namesOfIntegers)

namesOfIntegers = [:] //namesOfIntegers is once again an empty dictionary of type [Int: string]
print("dictionary contains \(namesOfIntegers.count) elements")
print("namesOfIntegers : ",namesOfIntegers)

if namesOfIntegers.isEmpty {
    print("Dictionary is empty")
}
else{
    print(namesOfIntegers)
}

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports : \(airports)")
print("the airports dictionary contains \(airports.count) items.")//prints "the airports dictionary contaims 2 items."

airports["LHR"] = "London Heathrow" //the value for "LHR" has been changed to "LondonHeathrow"

airports["YYZ"] = "TP International"
airports["AMD"] = "SVP International"
print("airports : ",airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

print("The old Value for DUB was \(oldValue).")
//prints "the old value for DUB was dublin."

if let airportName = airports["AMD"]{
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airport dictionary")
}

airports["mars"] = "Range Rover" //Apple International is not the real airport for APL,so delete it
print(airports)
airports["mars"] = nil // APL has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The removed airport's name is \(removedValue).")
}else{
    print("The airports dictionary does not contain a value for DUB.")
} //prints "the removed airport's name is Dublin Airport"

for (airportCode, airportName) in airports {
    print(airportCode, airportName)
}

for airportCode in airports.keys{
    print("airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys) // airportCodes is ["YYZ", "LHR"]
print("airportCodes: \(airportCodes)")

let airportNames = [String](airports.values) //airportnames is ["toronto pearson", "london heathrow"
print("airportNames: \(airportNames)")


//<KEY, VALUE> pairs
var d1 : Dictionary<String, String> = ["India":"Hindi","Canada":"English"]
print (d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
print(d1["USA"])
d1["china"] = "Mandarin"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstname"] = "priya" as AnyObject
d3["lastname"] = "nair" as AnyObject
d3["age"] = Int(23) as AnyObject
d3["salary"] = nil
print("d3",d3)

//Getting as a key, value pair
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Getting as a single object
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Declaring tuples
var x = (10, 20, "nair")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "notfound")
print(http404Error)

let (statusCode, statusMessage) = http404Error
print("statusCode:",statusCode)
print("statusmessage:",statusMessage)

let (codeOnly, _) = http404Error
print("codeonly:",codeOnly)

let errorDescription = (code: 404, Message: "notfound")
print(errorDescription.code,errorDescription.Message)

//working with functions

//simple declaration
func add()
{
    print("I am in user Defined Function")
}

add()

func add(n1:Int, n2:Int){
    var sum : Int
    sum = n1 + n2
    print("sum: ",sum)
}

add(n1:10,n2:20)

//add(20,10) //ERROR
//add(n2:50,n1:40) //ERROR

//single parameter

func welcome(name:String)
{
    print("Hello, \(name)")
}

//making parameter label optional using _
func sub(a:Int, _ b:Int)
{
let c = a - b
    print("Sub: \(c)")
}

sub(a: 30, 20)

//single return type
func mul(a: Int, b: Int) -> Int
{
    let c = a * b
    return c
}

var c = mul(a: 5, b:2)
print("mul: \(c)")

//multi return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int, Int)
{
//functions paramaeters are constants by default
//var temp = a
//a = b
//b = temp
return (b, a)
}

var (a, b) = swipe(number1: 10, b:20)
print("a: \(a), b: \(b)")
(_, c) = swipe(number1: 10, b:20)
print("c : \(c)")

//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    let temp = aa
    aa = bb
    bb = temp
}
var x1 = 8.0 , y1 = 9.0
swipe(aa:&x1 , bb:&y1)
print("x : \(x1), y: \(y1)")

///default parameter
func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    let si = amount * rate * noOfYears / 100
    return si
}

print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")

//variadic parameters
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)
display(n: 10,20,30)

//passing array as parameter
func display(numberValues:Int, parameters:[Int]...)
{
    print("number of values>>>>>>>>>>> \(numberValues)")
    for i in parameters{
        print("i: \(i)")
    }
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)

//sum of two arrays
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
}
return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)
