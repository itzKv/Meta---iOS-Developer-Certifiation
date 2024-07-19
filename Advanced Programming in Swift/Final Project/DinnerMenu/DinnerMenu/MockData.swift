//
//  MockData.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 02/07/24.
//

import Foundation

struct MockData {
    static let foodMenuItems: [MenuItem] = [
        MenuItem(price: 10.99, title: "Spinach Pasta", menuCategory: .food, ordersCount: 5, ingredients: [.spinach, .pasta, .tomatoSauce]),
        MenuItem(price: 12.99, title: "Broccoli Stir", menuCategory: .food, ordersCount: 3, ingredients: [.broccoli, .carrot]),
        MenuItem(price: 8.99, title: "Carrot Soup", menuCategory: .food, ordersCount: 7, ingredients: [.carrot, .tomatoSauce]),
        MenuItem(price: 11.99, title: "Veggie Pasta", menuCategory: .food, ordersCount: 6, ingredients: [.spinach, .broccoli, .pasta]),
        MenuItem(price: 9.99, title: "Tomato Pasta", menuCategory: .food, ordersCount: 8, ingredients: [.tomatoSauce, .pasta]),
        MenuItem(price: 13.99, title: "Green Salad", menuCategory: .food, ordersCount: 2, ingredients: [.spinach, .broccoli]),
        MenuItem(price: 14.99, title: "Pasta Primavera", menuCategory: .food, ordersCount: 4, ingredients: [.spinach, .carrot, .pasta]),
        MenuItem(price: 15.99, title: "Broccoli Pasta", menuCategory: .food, ordersCount: 1, ingredients: [.broccoli, .pasta]),
        MenuItem(price: 16.99, title: "Spinach Stir", menuCategory: .food, ordersCount: 3, ingredients: [.spinach, .carrot]),
        MenuItem(price: 17.99, title: "Vegetable Medley", menuCategory: .food, ordersCount: 5, ingredients: [.broccoli, .carrot, .spinach]),
        MenuItem(price: 18.99, title: "Carrot Pasta", menuCategory: .food, ordersCount: 6, ingredients: [.carrot, .pasta]),
        MenuItem(price: 19.99, title: "Tomato Salad", menuCategory: .food, ordersCount: 8, ingredients: [.spinach, .tomatoSauce])
    ]
    
    static let drinkMenuItems: [MenuItem] = [
        MenuItem(price: 2.99, title: "Lemonade", menuCategory: .drink, ordersCount: 10, ingredients: []),
        MenuItem(price: 3.99, title: "Orange Juice", menuCategory: .drink, ordersCount: 8, ingredients: []),
        MenuItem(price: 4.99, title: "Apple Juice", menuCategory: .drink, ordersCount: 6, ingredients: []),
        MenuItem(price: 5.99, title: "Iced Tea", menuCategory: .drink, ordersCount: 5, ingredients: []),
        MenuItem(price: 6.99, title: "Smoothie", menuCategory: .drink, ordersCount: 4, ingredients: []),
        MenuItem(price: 7.99, title: "Milkshake", menuCategory: .drink, ordersCount: 3, ingredients: []),
        MenuItem(price: 8.99, title: "Coffee", menuCategory: .drink, ordersCount: 2, ingredients: []),
        MenuItem(price: 9.99, title: "Tea", menuCategory: .drink, ordersCount: 1, ingredients: [])
    ]
    
    static let dessertMenuItems: [MenuItem] = [
        MenuItem(price: 3.99, title: "Chocolate Cake", menuCategory: .dessert, ordersCount: 5, ingredients: []),
        MenuItem(price: 4.99, title: "Apple Pie", menuCategory: .dessert, ordersCount: 4, ingredients: []),
        MenuItem(price: 5.99, title: "Ice Cream", menuCategory: .dessert, ordersCount: 6, ingredients: []),
        MenuItem(price: 6.99, title: "Cheesecake", menuCategory: .dessert, ordersCount: 3, ingredients: [])
    ]
    
    static func sortedByPopularity(menuItems: [MenuItem]) -> [MenuItem] {
        menuItems.sorted { $0.ordersCount > $1.ordersCount }
    }
    static func sortedByTitle(menuItems: [MenuItem]) -> [MenuItem] {
        menuItems.sorted { $0.title < $1.title }
    }
    static func sortedByPrice(menuItems: [MenuItem]) -> [MenuItem] {
        menuItems.sorted { $0.price < $1.price }
    }
}
