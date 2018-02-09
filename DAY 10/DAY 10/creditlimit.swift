//
//  creditlimit.swift
//  DAY 10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum limitIncreaseError: Error{
    case insufficientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
    case inprocess
}

struct requestsFromAccount{
    var type: String
    var balance: Double
    var reqStatus: String
}
