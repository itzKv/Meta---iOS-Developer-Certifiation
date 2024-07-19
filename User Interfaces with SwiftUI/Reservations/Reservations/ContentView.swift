//
//  ContentView.swift
//  Reservations
//
//  Created by Kevin Brivio on 03/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    var body: some View {
        VStack {
            MyView()
             Text("Little Lemon App")
            Text("Reservations")
            Stepper {
                Text("Reservation for \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(personCount: 10)
    }
}
