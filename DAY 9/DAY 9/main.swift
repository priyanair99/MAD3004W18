//
//  main.swift
//  DAY 9
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

let laptop = product(name: "Laptop")

if let machine = laptop{
    print("product name is \(machine.name)")
}

let anonymousMachine = product(name:"")

if anonymousMachine == nil {
    print("The anonymous machine could not be Initialized")
}

if let oneprojector = CardItem(name: "projector", quantity: 1){
    print("Cart contains \(oneprojector.quantity) \(oneprojector.name)")
}else{
    print("Unable to initialize cart item.")
}



