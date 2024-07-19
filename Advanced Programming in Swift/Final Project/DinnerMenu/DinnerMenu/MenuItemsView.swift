//
//  MenuItemsView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

class MenuViewViewModel: ObservableObject {
    @Published var foodMenuItems: [MenuItem] = MockData.foodMenuItems
    @Published var drinkMenuItems: [MenuItem] = MockData.drinkMenuItems
    @Published var dessertMenuItems: [MenuItem] = MockData.dessertMenuItems
}

let LittleLemonMenu = MenuViewViewModel()

struct MenuItemsView: View {
    @StateObject var viewModel = LittleLemonMenu
    @State var shouldPresentSheet = false
    @State var selectedCategory: MenuCategory? = nil
    @State var sortBy: String = ""
    @State var menuItems = MockData.foodMenuItems + MockData.drinkMenuItems + MockData.dessertMenuItems
    private var columnCount = 3 // how many items for every row

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Spacer()
                    Button(action: {
                        shouldPresentSheet.toggle()
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.blue)
                    }
                    .sheet(isPresented: $shouldPresentSheet) {
                        MenuItemsOptionView(shouldPresentSheet: $shouldPresentSheet, onCategorySelected: { category in
                            selectedCategory = category
                        }, sortBy: $sortBy)
                    }
                }
                Text("Menu")
                    .padding(.leading, 8)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 16) {
                        if let selectedCategory = selectedCategory {
                            Text(selectedCategory.rawValue)
                                .padding(.leading, 8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 4), count: columnCount), spacing: 30) {
                                ForEach(sortedMenuItems(for: selectedCategory)) { menu in
                                    NavigationLink(destination: MenuItemDetailsView(menuItem: menu)) {
                                        VStack {
                                            Image(menu.title)
                                                .resizable()
                                                .frame(width: 110, height: 100)
                                                .aspectRatio(contentMode: .fill)
                                                .clipped()
                                            
                                            Text(menu.title)
                                                .foregroundColor(.black)
                                                .font(.system(size: 12))
                                        }
                                        .padding(.bottom, 8)
                                    }
                                }
                            }
                            .padding(8)
                        } else {
                            ForEach(MenuCategory.allCases, id: \.self) { category in
                                if !menuItems(for: category).isEmpty {
                                    Text(category.rawValue)
                                        .padding(.leading, 8)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 4), count: columnCount), spacing: 30) {
                                        ForEach(sortedMenuItems(for: category)) { menu in
                                            NavigationLink(destination: MenuItemDetailsView(menuItem: menu)) {
                                                VStack {
                                                    Image(menu.title)
                                                        .resizable()
                                                        .frame(width: 110, height: 100)
                                                        .aspectRatio(contentMode: .fill)
                                                        .clipped()
                                                    
                                                    Text(menu.title)
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 12))
                                                }
                                                .padding(.bottom, 8)
                                            }
                                        }
                                    }
                                    .padding(8)
                                }
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(8)
        }
        .navigationTitle("Menu")
    }

    func sortedMenuItems(for category: MenuCategory) -> [MenuItem] {
        let items = menuItems(for: category)
        switch sortBy {
        case "name":
            return MockData.sortedByTitle(menuItems: items)
        case "price":
            return MockData.sortedByPrice(menuItems: items)
        case "popular":
            return MockData.sortedByPopularity(menuItems: items)
        default:
            return items
        }
    }

    func menuItems(for category: MenuCategory) -> [MenuItem] {
        switch category {
        case .food:
            return viewModel.foodMenuItems
        case .drink:
            return viewModel.drinkMenuItems
        case .dessert:
            return viewModel.dessertMenuItems
        }
    }
}

#Preview {
    MenuItemsView()
}
