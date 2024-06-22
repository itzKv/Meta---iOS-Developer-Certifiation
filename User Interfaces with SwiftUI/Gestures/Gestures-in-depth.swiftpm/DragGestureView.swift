//
//  DragGestureView.swift
//  Gestures-in-depth
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct DragGestureView: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        Image("LittleLemon_Logo")
            .offset(offsetValue)
            .gesture(
                DragGesture ()
                    .onChanged { gesture in
                        offsetValue = gesture.translation
                    }
            )
    }
}

#Preview {
    DragGestureView()
}
