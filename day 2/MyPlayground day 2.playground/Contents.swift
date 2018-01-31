//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

//Multiple line strings
let strOne = """
This is first line
This is another line
This is one more line
OK. Enough of lines
"""
print(strOne)

//Empty String and Unicode
var mood = ""
let heart = "\u{1F496}"
let dollar = "\u{24}"
let blackheart = "\u{2665}"
mood = " happy"

if mood.isEmpty {
    print("This is an empty string")
}
else{
    print(blackheart, heart, dollar)
}

mood += " cheerful joyful"
print(mood)

mood += " Be happy 😀"
print(mood)

//Working with characters, can access individual character
var firstName = String()
firstName = "Sonal"
print(firstName)

for i in firstName{
    print(i)
}

//To append(add) a character in frist name or string
let initial : Character = "G"
firstName.append(initial)

//ALternative for append
print(firstName)
print("FirstName is \(firstName) which is \(firstName.count) characters long.")

var lastName = " Verma"
var fullName = firstName + lastName
print(fullName)

firstName += lastName
print(firstName)

//This is String indices
print("Start Index:", firstName[firstName.startIndex])
print("Before End Index:", firstName[firstName.index(before: firstName.endIndex)])
print("AFter Start Index:", firstName[firstName.index(after: firstName.startIndex)])
print("5th Character:", firstName[firstName.index(firstName.startIndex, offsetBy: 4)])
print("3rd from last Character:", firstName[firstName.index(firstName.endIndex,offsetBy: -3)])


//Insertion, Removal, operations
var language = "Swift"
print("language:", language)

//to insert the exclamationn  at the end
language.insert("!", at: language.endIndex)
print("language : ", language)

//to insert a string into string using contentof
language.insert(contentsOf:" Jave", at: language.endIndex)

language.insert(contentsOf:" is nice than ",at: language.index(language.startIndex, offsetBy: 6))

//to remove a character
language.remove(at: language.index(before: language.endIndex))

//to remove subrange
let range = language.startIndex..<language.endIndex
language.removeSubrange(range)
print("language removesubrange: ", language)

let greeting = "Happy Hplidays!"
let index = greeting.index(of: " ") ?? greeting.endIndex
let start = greeting[..<index]
let newGreet = String(start)
print("sub string : ", newGreet)
print("String in uppercase : ",newGreet.uppercased())

if (newGreet == newGreet.uppercased()){
    print("Equal")
}
else{
    print("Not equal")
}

var grade : String?
grade = "A"
let finalGrade = grade ?? "F"

if (finalGrade.isEmpty){
    
    print("Not graded yet")
}
else{
    print("Grade : ",finalGrade)
}



