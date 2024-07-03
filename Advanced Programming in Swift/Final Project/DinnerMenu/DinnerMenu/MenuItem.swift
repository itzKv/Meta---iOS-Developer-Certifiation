//
//  MenuItem.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 02/07/24.
//

import Foundation

struct MenuItem: Identifiable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingredients: [Ingredient]
}
