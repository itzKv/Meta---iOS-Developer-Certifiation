//
//  MenuItemsOptionView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var shouldPresentSheet: Bool
    var onCategorySelected: (MenuCategory) -> Void
    @Binding var sortBy: String
    let categories = MenuCategory.allCases
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Button("Done") {
                    shouldPresentSheet.toggle()
                }
                .padding(.trailing, 16)
            }
            Text("Filter")
                .font(.system(size: 40))
                .fontWeight(.bold)
            VStack(alignment: .leading) {
                List {
                    Section(header: Text("SELECTED CATEGORIES")) {
                        ForEach(categories, id: \.self) {category in
                            Button(action: {
                                onCategorySelected(category)
                                shouldPresentSheet.toggle()
                            }) {
                                Text(category.rawValue)
                                    .foregroundColor(.black)
                            }
                        }
                    }

                    Section(header: Text("SORT BY")) {
                        Button(action: {
                            sortBy = "popular"
                            shouldPresentSheet.toggle()
                        }) {
                            Text("Most Popular")
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            sortBy = "price"
                            shouldPresentSheet.toggle()
                        }) {
                            Text("Price $-$$$")
                                .foregroundColor(.black)
                        }
                        Button(action: {
                            sortBy = "name"
                            shouldPresentSheet.toggle()
                        }) {
                            Text("A-Z")
                                .foregroundColor(.black)
                        }
                    }
                }
            
            }
        }
        
        .padding(16)
    }
    
    func selectByCategories(category: MenuCategory) -> [MenuItem] {
        switch category {
        case .food :
            return MockData.foodMenuItems
        case .drink :
            return MockData.drinkMenuItems
        case .dessert :
            return MockData.dessertMenuItems
        }
    }
}
struct MenuItemsOptionView_Previews: PreviewProvider {
    @State static var shouldPresentSheet = true
    @State static var menuItems: [MenuItem] = MockData.foodMenuItems
    @State static var sortBy: String = "price"
    
    static var previews: some View {
        MenuItemsOptionView(shouldPresentSheet: $shouldPresentSheet, onCategorySelected: {_ in}, sortBy: $sortBy)
    }
}

