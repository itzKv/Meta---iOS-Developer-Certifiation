//
//  GestureRecognizer.swift
//  Exercise-GesturesAndCallbacks
//
//  Created by Kevin Brivio on 14/06/24.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    var body: some View {
        Text("TAP ME")
            .font(.title)
            .padding(15)
            .frame(width:200, height:50)
            .background(flag ? .green : .yellow)
            .foregroundColor(.white)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
