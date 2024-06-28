//
//  MenuItemsView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var images = ["pasta", "pasta", "pasta", "pasta"]
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Text("Menu")
                .fontWeight(.heavy)
                .font(.system(size: 40))
            VStack {
                Text("Food")
                    .font(.system(size: 25))
                ForEach(0..<3) { i in
                    HStack {
                        Image(images[i])
                            .resizable()
                            .frame(width: 112, height: 100)
                    }
                }
            }
            
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

#Preview {
    MenuItemsView()
}
