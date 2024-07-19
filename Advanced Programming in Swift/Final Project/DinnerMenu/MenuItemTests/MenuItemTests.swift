//
//  MenuItemTests.swift
//  MenuItemTests
//
//  Created by Kevin Brivio on 05/07/24.
//

import XCTest
@testable import DinnerMenu

final class MenuItemTests: XCTestCase {
    func testMenuItemTitle() {
        let title = "Tomato Pasta"
        let menuItem = MenuItem(price: 1.9, title: title, menuCategory: .food, ordersCount: 3, ingredients: [])
        XCTAssertEqual(menuItem.title, title, file: "Menu item title should be equalized")
    }
    
    func testMenuItemIngredients() {
        let ingredients = [Ingredient.tomatoSauce, Ingredient.pasta]
        let menuItem = MenuItem(price: 12.9, title: "Tomato Pasta", menuCategory: .food, ordersCount: 3, ingredients: ingredients)
        XCTAssertEqual(menuItem.ingredients, ingredients, "Menu item Ingredients should be same")
    }
}
