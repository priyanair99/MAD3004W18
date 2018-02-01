//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//classes and structures in swift

//declaring a structure
struct project{
    var title = ""
    var hours = 0
    
    func display(){
        print("project Title : ",title)
        print("Total work hours required : ",hours)
    }
}

//Declaring instance of structure
var LMPSProject = project(title: "Moodle",hours :200)
print(LMPSProject)

LMPSProject.display()

LMPSProject.hours = 300
LMPSProject.display()


//class declaration
class Manager {
    var name : String = " "
    var productOwner : Bool = true
    var currentProjects = project()
}

//creating instance of class
let mgrCanada = Manager()
mgrCanada.name = "priya"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "sales reporting", hours: 20)


print("mgrcanada Name : ",mgrCanada.name)
print("mgrcanada product Owner: ",mgrCanada.productOwner)
print("mgrCanada current project title : ",mgrCanada.currentProjects.title)
print("Hours:",mgrCanada.currentProjects.hours)
//changing properties

mgrCanada.productOwner = false
mgrCanada.currentProjects = project(title: "sales reporting",hours:500)
print("Name",mgrCanada.name)
print("Product Owner",mgrCanada.productOwner)
print("Project Title",mgrCanada.currentProjects.title) //invoking structure members
print("Hours",mgrCanada.currentProjects.hours)  //invoking structure members


//structure value types
struct address{
    var street = "265 Yorkland Blvd"
var city = "North york"
    var postalcode = "M1H1Y1"
}
var lambton = address()
print("Lambton:",lambton)

var cestar = lambton
//let cestar = lambton
//raise error when change the parameter
print("cestar :",cestar)

cestar.street = "271 yorkland blvd"
cestar.postalcode = "M1H3Y3"
print("cestar :",cestar)
print("Lambton : ", lambton)

//classes are Reference types
class Institute {
    var street = "265 Yorkland Blvd"
var city = "north york"
    var postalcode = "M1H1Y1"
}
var myLambton = Institute()
print("mylambton street :",myLambton.street)
print("mylambton city:",myLambton.city)
print("mylambton postalcode:",myLambton.postalcode)

var mycestar = myLambton
print("mycestar street :",mycestar.street)
print("mycesatr postalcode:",mycestar.postalcode)

print("mylambton streeet:",myLambton.street)
print("mylambton postalcode: ",myLambton.postalcode)

//identical to ===
if myLambton === mycestar {
    print("lambton and cestar are same")
}
else{
    print("lambton and cestar are not same")
}

var yourCestar = Institute()
if yourCestar === mycestar {
    print("LAMBTON AND CESTAR ARE SAME")
}
else {
    print("LAMBTON AND CESTAR ARE NOT SAME")
}


