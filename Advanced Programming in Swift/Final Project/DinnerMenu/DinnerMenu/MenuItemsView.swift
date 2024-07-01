//
//  MenuItemsView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    var title: String
    var ingredients: [Ingredient]

    class MenuItem : MenuItemProtocol, Identifiable {
        let id: UUID
        let price: Double
        let title: String
        var menuCategory: MenuCategory
        var ordersCount: Int
        var priceValue: Int
        var ingredients: [Ingredient]
        
        var foodMenuItems: [MenuItem] = []
        var drinkMenuItems: [MenuItem] = []
        var dessertMenuItems: [MenuItem] = []
        
        init(id: UUID = UUID(), price: Double, title: String, menuCategory: MenuCategory, ordersCount: Int = 0, priceValue: Int, ingredients: [Ingredient] = []) {
            self.id = id
            self.price = price
            self.title = title
            self.menuCategory = menuCategory
            self.ordersCount = ordersCount
            self.priceValue = priceValue
            self.ingredients = ingredients
        }
    }
}

class MenuViewViewModel: ObservableObject {
    var foodMenuItems: [MenuItem] = []
    var drinkMenuItems: [MenuItem] = []
    var dessertMenuItems: [MenuItem] = []
    
    init(foodMenuItems: [MenuItem], drinkMenuItems: [MenuItem], dessertMenuItems: [MenuItem]) {
        self.foodMenuItems = foodMenuItems
        self.drinkMenuItems = drinkMenuItems
        self.dessertMenuItems = dessertMenuItems
    }
}

let menuItems: [MenuItem] = [
    // Food Menu Items
    MenuItem(title: "Spaghetti Bolognese", ingredients: [.pasta, .tomatoSauce]),
    MenuItem(title: "Caesar Salad", ingredients: [.spinach]),
    MenuItem(title: "Grilled Cheese Sandwich", ingredients: []),
    MenuItem(title: "Chicken Alfredo", ingredients: [.pasta, .spinach]),
    MenuItem(title: "Beef Tacos", ingredients: []),
    MenuItem(title: "Vegetable Stir Fry", ingredients: [.broccoli, .carrot, .spinach]),
    MenuItem(title: "Margherita Pizza", ingredients: [.tomatoSauce, .spinach]),
    MenuItem(title: "BBQ Ribs", ingredients: []),
    MenuItem(title: "Fish and Chips", ingredients: []),
    MenuItem(title: "Chicken Caesar Wrap", ingredients: [.spinach]),
    MenuItem(title: "Pulled Pork Sandwich", ingredients: []),
    MenuItem(title: "Vegetable Soup", ingredients: [.carrot, .spinach, .broccoli]),
    
    // Drink Menu Items
    MenuItem(title: "Lemonade", ingredients: []),
    MenuItem(title: "Iced Tea", ingredients: []),
    MenuItem(title: "Coca Cola", ingredients: []),
    MenuItem(title: "Orange Juice", ingredients: []),
    MenuItem(title: "Apple Juice", ingredients: []),
    MenuItem(title: "Milkshake", ingredients: []),
    MenuItem(title: "Coffee", ingredients: []),
    MenuItem(title: "Water", ingredients: []),
    
    // Dessert Menu Items
    MenuItem(title: "Chocolate Cake", ingredients: []),
    MenuItem(title: "Apple Pie", ingredients: []),
    MenuItem(title: "Cheesecake", ingredients: []),
    MenuItem(title: "Ice Cream", ingredients: [])
]


struct MenuItemsView: View {
    private var images = ["pasta", "pasta", "pasta", "pasta", "pasta"]
    private var columnCount = 3 // how many items for every row
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Spacer()
                    NavigationLink(destination: MenuItemsOptionView()) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.blue)
                    }
                }
                Text("Menu").padding(.leading, 8)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.vertical) {
                    Text("Food").padding(.leading, 8).frame(maxWidth: .infinity, alignment: .leading)
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: columnCount), spacing: 8) {
                        ForEach(menuItems, id: \.id) { item in
                            NavigationLink(destination: MenuItemDetailsView()) {
                                VStack {
                                    Image(item.title)
                                        .resizable()
                                        .frame(height: 100)
                                        .clipped()
                                    Text(item.title)
                                        .foregroundStyle(Color.black)
                                }
                                .padding(.bottom, 8)
                            }
                        }
                    }
                    .padding(8)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(8)
        }.navigationTitle("Menu")
    }
}

#Preview {
    MenuItemsView()
}
