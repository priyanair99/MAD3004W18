//
//  License.swift
//  Day 9 task
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class License : Person
{
    var age: Int
    var licenseno: String
    
    init?(name1:String,name2:String,arg_addr:String,arg_age:Int,arg_lic_no:String)  // failing initializer check
    {
        let n1 = name1
        let n2 = name2
        let address = arg_addr
        
        if (arg_age < 16)
        {
            return nil
        }
        else
        {
            
            self.age = arg_age
            self.licenseno = arg_lic_no
            super.init(F_name: n1, L_name: n2, addr: address)
            
        }
        
        
    }
    
}

