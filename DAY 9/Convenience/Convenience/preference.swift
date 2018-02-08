//
//  preference.swift
//  Convenience
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class preference: vehicle{
    var prefer = false
    var description: String {
        var output = "Do you prefer \(noofwheels) wheel vehicles from \(name) ?"
        output += prefer ? "✅" : "❌"
        return output
    }
    
}
