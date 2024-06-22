//
//  OnTapGestureView.swift
//  Gestures-in-depth
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct OnTapGestureView: View {
    var body: some View {
        Text("on Tap Gesture").onTapGesture {
            print("You Tapped")
        }
        Spacer()
        Text("on Tap Gesture with count").onTapGesture {
            print("You Tapped")
        }
    }
}

#Preview {
    OnTapGestureView()
}
