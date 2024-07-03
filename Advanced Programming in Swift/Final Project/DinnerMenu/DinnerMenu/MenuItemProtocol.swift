//
//  MenuItemProtocol.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 01/07/24.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
