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
                Text("Menu")
                    .padding(.leading, 8)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 16) {
                        // Food Section
                        Text("Food")
                            .padding(.leading, 8)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 4), count: columnCount), spacing: 30) {
                            ForEach(viewModel.foodMenuItems) { menu in
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
                .frame(maxWidth: .infinity)
            }
            .padding(8)
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuItemsView()
}
