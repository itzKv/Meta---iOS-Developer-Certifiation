//
//  onLongPressGestureView.swift
//  Gestures-in-depth
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct onLongPressGestureView: View {
    var body: some View {
        Text("Long press gesture").onLongPressGesture {
            print("You tap long press")
        }
        Spacer()
        Text("Long press gesture for 4 seconds")
            .onLongPressGesture(minimumDuration: 4, maximumDistance: 15, perform: {
                print("You tap long press min 4s")
            },
        onPressingChanged: { state in
            print (state)
        })
    }
}

#Preview {
    onLongPressGestureView()
}
