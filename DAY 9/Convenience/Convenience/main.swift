//
//  main.swift
//  Convenience
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var objmanu = manufacturer()
print("\(objmanu.name)")

var objvehcle = vehicle()
print("\(objvehcle.noofwheels)")

//no parameter
let noobject = vehicle()

//one parameter
let alienvehicle = vehicle(name: "Vento");

//both paramters
let bicycle = vehicle(name: "BMW", noofwheels: 4)

print("\(alienvehicle.name)")
print("name: \(bicycle.name), no of wheels : \(bicycle.noofwheels)")
