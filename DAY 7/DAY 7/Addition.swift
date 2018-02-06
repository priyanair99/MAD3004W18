//
//  Addition.swift
//  DAY 7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Operation: Arithmetic{
    var oper: Character = "+"
    
    init(n1: Int, n2: Int, oper: Character){
        super.init(n1: n1, n2: n2)
        self.oper = oper
    }
    
    required init (n1: Int, n2: Int){
        super.init(n1: n1, n2: n2)
    }
    
    override func calculate(){
        print("calling function \(self.n1) \(oper) \(self.n2)")
    }
}


