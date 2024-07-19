//
//  RotationGesture.swift
//  Gestures-in-depth
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct RotationGestureView: View {
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    var body: some View {
        Image("LittleLemon_Logo")
            .rotationEffect(amount + finalAmount)
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        amount = value
                    }
                    .onEnded { value in
                        finalAmount += amount
                        amount = .zero
                    }
            )
    }
}

#Preview {
    RotationGestureView()
}
