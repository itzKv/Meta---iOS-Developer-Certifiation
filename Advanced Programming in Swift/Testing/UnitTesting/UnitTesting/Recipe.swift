//
//  Recipe.swift
//  UnitTesting
//
//  Created by Kevin Brivio on 28/06/24.
//

import Foundation

struct Recipe {
    var orderCount = 0
    mutating func incrementOrderCount() {
        orderCount += 1
    }
}
