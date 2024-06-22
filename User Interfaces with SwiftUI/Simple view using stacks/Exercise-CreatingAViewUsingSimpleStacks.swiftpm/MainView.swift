//
//  MainView.swift
//  Exercise-CreatingAViewUsingSimpleStacks
//
//  Created by Kevin Brivio on 09/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 8) {
                Text("Demo").scaledToFit().frame(width:100, height: 100, alignment: .center)
                VStack(spacing: 10)
                {
                    Text("Little Lemon").font(.title)
                    Text("Tomato Tortellini, Bottarga and Carbonara.").font(.title3).multilineTextAlignment(.center)
                } // VStack
                .padding()
            } // HStack
            .padding()
        }
        .padding()
        .background(.green).opacity(0.6).ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
