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
                Section {
                    Text("SELECTED CATEGORIES")
                        .font(.caption)
                    List(categories, id: \.self) { category in
                        Button(action: {
                            onCategorySelected(category)
                            shouldPresentSheet.toggle()
                        }) {
                            Text(category.rawValue)
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
    
    static var previews: some View {
        MenuItemsOptionView(shouldPresentSheet: $shouldPresentSheet, onCategorySelected: {_ in})
    }
}

