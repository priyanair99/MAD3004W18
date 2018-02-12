//
//  Parttime.swift
//  DAY 11_Access control
//
//  Created by MacStudent on 2018-02-12.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PartTime //Student and FullTime cannot be extended as file private
{
    var sname: String?
    fileprivate func setStudentName(sname: String)
    {
        self.sname = sname
    }
    
}

internal class ExtendPartTime: PartTime {
    override internal func setStudentName(sname: String)
    {
        super.setStudentName(sname: sname)
    }
}

