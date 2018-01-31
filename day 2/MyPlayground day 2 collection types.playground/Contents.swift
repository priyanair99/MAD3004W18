//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Array Declaration
var a = [10, 20, 30, 40, 50]
print("a[0] : \(a[0])")

//To print the whole array
print("a : ",a)

let j1 = [10, 20]
print("j1: ", j1)

//Use methods to add values
var b = [Int]()
print("Size of array b is \(b.count)")
b.append(100)
print("b[0] : \(b[0])")

b.append(1000)
print("b[0] : \(b[0])")

b[0] = 1000
print("b[0] : \(b[0])")
print("Size of array b is \(b.count)")

/* Index out of range error
 b[2] = 500
 print("b : ", b)
 print("Size of array b is \(b.count)")
 */

//assigning the default values
var num1 = [Int](repeating: 1, count: 3)
print("num1 array : \(num1)")
var num2 = [Int](repeating: 5, count: 3)
print("num2 array : \(num2)")
var numMerge = num1 + num2
print("numMerge array : \(numMerge)")

//Declare to store any data types values
var c = [Any]()
print("Size of array c : \(c.count)")
c.append(100)
c.append("Verma")
c.append(100.89)
print("C array : \(c)")

//To retrive the first three elements from array name a
var x = a[1...3]
for t in x{
    print("x : \(t)")
}

//String array and for each with (KEY, Value)
var shoppingList: [String] = ["Eggs", "Milk", "Yogurt"]
for (index, value) in shoppingList.enumerated(){
    print("Item \(index): \(value)")
}

print("The shopping list contains \(shoppingList.count) items.")

//Check for shopping list is empty or not
if shoppingList.isEmpty {
    print("The shopping list is empty.")
}else{
    print("The shopping list is not empty")
}

//appending, insertion, removal of element in array
shoppingList.append("Flour")
print("ShoppingList Array : \(shoppingList)")

shoppingList += ["chocolate spread", "cheese", "Butter"]
print("ShoppingList Array : \(shoppingList)")

shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at:2)
let apples = shoppingList.removeLast()
print("ShoppingLust Array : \(shoppingList)")
print(mapleSyrup)
print(apples)

//SET/
//Declaring a SET
var grades: Set<Character> = []
grades.insert("A")
grades.insert("B")
print("grades : \(grades)")
print("Values in set: \(grades.count)")

//requires hashable datatype
//var gradeType:SET<Any> = []
var favouriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print("favouriteGenres : \(favouriteGenres)")

// Prints "I have particular music preferences."
print("I have \(favouriteGenres.count) favourite music genres")
if favouriteGenres.isEmpty{
    print("As far as music goes, I'm not picky.")
}else{
    print("I have particular music preferences.")
}

// favoriteGenres now contains 4 items
favouriteGenres.insert("Jazz")

// Prints "Rock? I'm over it."
if let removedGenre = favouriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

print("favouriteGenres: \(favouriteGenres)")

//You can iterate over the values in a set with a for-in loop.
for genre in favouriteGenres {
    print("\(genre)")
}

//Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(singleDigitPrimeNumbers.subtracting(oddDigits).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

//Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))
