//
//  task 2.swift
//  DAY 7
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

////task for the day///
//create an extension to Int type to find out that the number if prime or not

extension Int {
    var isPrime: Bool {
        guard self > 1 else {
            return false
        }
        
        for i in 2..<self {
            if self % i == 0 {
                
                return false
            }
        }
        
        return true
    }
    
}
