//
//  TestB.swift
//  DAY 7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestB: Test{
    var n2: Int = 30
    
    override func display() {
        print("Inside Class B")
    }
    override func displayValue(){
        print("value of n1 : \(self.n1)")
         print("value of n2 : \(self.n2)")
}
}
