//
//  ReservationView.swift
//  Exercise-AddingControls
//
//  Created by Kevin Brivio on 09/06/24.
//

import SwiftUI

struct ReservationCalendar: View {
    @State var reservationDate = Date()
    
    var body: some View {
        Form {
            HStack {
                Image(systemName: "calendar")
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: {print("do something!")}) {
                    HStack {
                        Image(systemName: "arror.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
        }
        Text("\(reservationDate.formatted(date: .long, time: .complete))")
    }

}

#Preview {
    ReservationCalendar()
}
