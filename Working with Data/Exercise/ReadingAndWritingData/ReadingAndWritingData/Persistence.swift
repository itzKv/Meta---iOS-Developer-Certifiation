//
//  Persistence.swift
//  ReadingAndWritingData
//
//  Created by Kevin Brivio on 18/07/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        seedData(in: viewContext)
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "ReadingAndWritingData")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
        
        // Seed data if the store is empty
        let context = container.viewContext
        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
        do {
            let count = try context.count(for: fetchRequest)
            if count == 0 {
                PersistenceController.seedData(in: context)
            }
        } catch {
            print("Failed to check if store is empty: \(error)")
        }
    }
    static func seedData(in context: NSManagedObjectContext) {
        for _ in 0..<10 {
            let newCustomer = Customer(context: context)
            newCustomer.fullName = "Little John"
            newCustomer.email = "squaresteel@email.com"
            
            let newLocation = Location(context: context)
            newLocation.city = "Beijing City"
            newLocation.neighborhood = "555 Aunty Street"
            newLocation.phoneNumber = "(212) 220-333"
        }
        do {
            try context.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
