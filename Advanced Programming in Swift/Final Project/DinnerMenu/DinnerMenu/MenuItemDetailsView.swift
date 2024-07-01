//
//  MenuItemDetailsView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var body: some View {
        VStack {
            Text("Food 5")
                .fontWeight(.heavy)
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .frame(width: 300, height: 50)
                .padding(.leading, 20)
            
            Image("Little Lemon logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            VStack (alignment: .center) {
                Text("Price:")
                Text("10.99")
                Text("Ordered:")
                Text("1000")
                Text("Ingredients:")
                Text("Spaghetti")
                Text("Egg")
                Text("Cheese")
            }
        }
    }
}

#Preview {
    MenuItemDetailsView()
}
