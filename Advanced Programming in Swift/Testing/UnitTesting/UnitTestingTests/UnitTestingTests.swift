//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Kevin Brivio on 28/06/24.
//

import XCTest
@testable import UnitTesting

final class UnitTestingTests: XCTestCase {
    func test_recipeOrderCount_init_orderCountEqualsZero() {
        let recipe = Recipe()
        XCTAssert(recipe.orderCount == 0)
    }
    
    func test_recipeOrderCount_incrementOneOrder_orderCountEqualsOne() {
        var recipe = Recipe()
        recipe.incrementOrderCount()
        XCTAssert(recipe.orderCount == 1)
    }
}
