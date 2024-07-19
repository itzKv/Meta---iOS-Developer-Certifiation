//
//  MenuItemDetailsView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    var body: some View {
        VStack {
            Text(menuItem.title)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .frame(width: 300, height: 50)
                .padding(.leading, 20)
            
            Image(menuItem.title)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            VStack (alignment: .center) {
                Text("Price:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("\(menuItem.price, specifier: "%.2f")")
                Text("Ordered:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("\(menuItem.ordersCount)")
                Text("Ingredients:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                ForEach(menuItem.ingredients, id: \.self) { ingredient in
                    Text(ingredient.rawValue)
                }
            }
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMenuItem = MenuViewViewModel().foodMenuItems[0]
        MenuItemDetailsView(menuItem: sampleMenuItem)
    }
}
