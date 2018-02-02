//
//  permanent employee.swift
//  DAY 5 playground
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PermanentEmployee : Employee{
    var vacationWeeks : Int?
    
    //default initializer
    override init(){
        super.init()
        self.vacationWeeks = 0
    }
    
    //parametrized initializer of subclass
    init(eID: Int, eNM: String, ePay: Double, weeks: Int){
        super.init(ID: eID, nm: eNM, pay: ePay)
        self.vacationWeeks = weeks
    }
    
    override func display() {
        super.display()
        print("Vacation Weeks : ",vacationWeeks!)
    }
}
