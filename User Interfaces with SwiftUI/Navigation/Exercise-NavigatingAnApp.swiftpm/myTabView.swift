//
//  myTabView.swift
//  Exercise-NavigatingAnApp
//
//  Created by Kevin Brivio on 13/06/24.
//

import SwiftUI

struct myTabView: View {
    var body: some View {
        VStack {
            TabView {
                Text("This is the share view")
                    .tabItem {
                        Image(systemName: "square.and.arrow.up")
                        Text("Share")
                    }
                Text("This is the Trash view")
                    .tabItem {
                        Image(systemName: "trash")
                        Text("Bin")
                    }
            }
            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    myTabView()
}
