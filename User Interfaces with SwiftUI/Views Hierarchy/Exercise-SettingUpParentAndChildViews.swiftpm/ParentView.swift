//
//  ParentView.swift
//  Exercise-SettingUpParentAndChildViews
//
//  Created by Kevin Brivio on 12/06/24.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width:50, height:50)
                .foregroundColor(.yellow)
            Text("Rectangle one")
                .foregroundStyle(.white)
                .padding(20)
                .background(Color.yellow)
            Rectangle()
                .frame(width:100, height:30)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    ParentView()
}
