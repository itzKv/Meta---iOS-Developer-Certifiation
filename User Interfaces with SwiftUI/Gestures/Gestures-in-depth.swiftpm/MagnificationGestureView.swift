//
//  MagnificationGestureView.swift
//  Gestures-in-depth
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct MagnificationGestureView: View {
    @State private var amount = 0.5
    @State private var finalAmount = 1.0
    var body: some View {
        Image("LittleLemon_Logo")
            .scaleEffect(amount + finalAmount)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        amount = value - 1
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = 0
                    }
            )
    }
}

#Preview {
    MagnificationGestureView()
}
