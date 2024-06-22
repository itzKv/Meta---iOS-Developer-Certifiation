//
//  ReservationForm.swift
//  Exercise-Observing a Textfield
//
//  Created by Kevin Brivio on 08/06/24.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type your name", text: $customerName, onEditingChanged: {status in print(status)})
                .onSubmit {
                    print("submitted")
                }
                .onChange(of: customerName, perform: {newValue in print(newValue)
                })
        }
        .padding()
    }

}

#Preview {
    ReservationForm()
}
