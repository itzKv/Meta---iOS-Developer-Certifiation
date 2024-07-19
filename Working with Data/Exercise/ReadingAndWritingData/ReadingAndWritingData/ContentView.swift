//
//  ContentView.swift
//  ReadingAndWritingData
//
//  Created by Kevin Brivio on 18/07/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Customer.fullName, ascending: true)],
        animation: .default)
    private var customers: FetchedResults<Customer>

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Customer")) {
                    ForEach(customers, id: \.self) { customer in
                        NavigationLink {
                            CustomerDetailView(customer: customer)
                        } label: {
                            CustomerRowView(customer: customer)
                        }
                    }
                    .onDelete(perform: deleteCustomer)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addCustomer) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            .onAppear{
                print("total customer: \(customers.count)")
            }
            Text("Select an item")
        }
    }

    private func addCustomer() {
        withAnimation {
            let newCustomer = Customer(context: viewContext)
            newCustomer.fullName = "Little John"
            newCustomer.email = "squaresteel@email.com"
            
            let newLocation = Location(context: viewContext)
            newLocation.city = "54 Fire street"
            newLocation.neighborhood = "Square Circle Gang"
            newLocation.phoneNumber = "(999) 992-02134"
            
            newCustomer.fromLocation = newLocation
            saveContext()
        }
    }

    private func deleteCustomer(offsets: IndexSet) {
        withAnimation {
            offsets.map { customers[$0] }.forEach(viewContext.delete)
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}

struct CustomerRowView: View {
    let customer: Customer
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(customer.fullName ?? "Unknown")
                .font(.headline)
            if let location = customer.fromLocation {
                Text(location.city ?? "Unknown city")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct CustomerDetailView: View {
    let customer: Customer
    
    var body: some View {
        List {
            Section(header: Text("Customer details")) {
                Text("Name: \(customer.fullName ?? "Unknown")")
                Text("Email: \(customer.email ?? "No Email")")
            }
            if let location = customer.fromLocation {
                Section(header: Text("Location details")) {
                    Text("City: \(location.city ?? "Unknown")")
                    Text("Neighborhood: \(location.neighborhood ?? "Unknown")")
                    Text("Phone: \(location.phoneNumber ?? "Unknown")")
                }
            }
        }
        .navigationTitle("Customer Info")
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
