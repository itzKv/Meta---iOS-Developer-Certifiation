//
//  ContentView.swift
//  DinnerMenu
//
//  Created by Kevin Brivio on 28/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var isExpanding = false
    
    var body: some View {
        MenuItemsViews()
    }
}

#Preview {
    ContentView()
}
