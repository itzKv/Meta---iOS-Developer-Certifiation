//
//  ReadingAndWritingDataApp.swift
//  ReadingAndWritingData
//
//  Created by Kevin Brivio on 18/07/24.
//

import SwiftUI

@main
struct ReadingAndWritingDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
