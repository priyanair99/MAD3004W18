//
//  manufacturer.swift
//  Convenience
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class manufacturer{
    var name: String
    ////Designated Initializer
    init(name: String) {
        self.name = name
    }
    ///convinience initializer
    convenience init(){
        self.init(name: "[Unknown]")
    }
}
