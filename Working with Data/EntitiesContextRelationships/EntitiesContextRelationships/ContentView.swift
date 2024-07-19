//
//  ContentView.swift
//  EntitiesContextRelationships
//
//  Created by Kevin Brivio on 17/07/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        
        Button(action: {
            let newDish = Dish(context: viewContext)
            newDish.name = "Hamburger"
            newDish.price = 2.49
            newDish.size = "Extra"
            
            let newDessert = Dessert(context: viewContext)
            newDessert.name = "Apple pie"
            newDessert.size = "Large"
            newDessert.price = 3.99
            
            let location1 = Location(context: viewContext)
            location1.city = "Las Vegas"
            location1.neighborhood = "Downtown"
            location1.phoneNumber = "(702) 555-9898"
            
            let location2 = Location(context: viewContext)
            location2.city = "Los Angeles"
            location2.neighborhood = "North Hollywood"
            location2.phoneNumber = "(213) 542-1415"
            
            let customer = Customer(context: viewContext)
            customer.firstName = "John"
            customer.lastName = "Doe"
            customer.email = "johndoe@example.com"
            customer.phoneNumber = "(212) 555-1234"
            
            customer.fromLocation = [location2]
            customer.toDish = newDish
            customer.toDessert = newDessert
            
            guard viewContext.hasChanges else {
                return
            }
            do {
                try viewContext.save()
            } catch (let error) {
                print(error.localizedDescription)
            }
        }, label: {
            Text("This is core data")
        })
        
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                    } label: {
                        Text(item.timestamp!, formatter: itemFormatter)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
