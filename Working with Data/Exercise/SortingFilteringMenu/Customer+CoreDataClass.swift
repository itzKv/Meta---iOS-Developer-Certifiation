//
//  Customer+CoreDataClass.swift
//  SortingFilteringMenu
//
//  Created by Kevin Brivio on 19/07/24.
//
//

import Foundation
import CoreData

@objc(Customer)
public class Customer: NSManagedObject {
    class func findCustomer(withFullName fullName: String, context: NSManagedObjectContext) -> Customer? {
        let request = Customer.request()
        
        let predicate = NSPredicate(format: "fullName CONTAINS[cd] %@", fullName)
        request.predicate = predicate
            
        do {
            guard let results = try context.fetch(request) as? [Customer],
                  results.count > 0
            else { return nil }
            return results.first
        } catch(let error) {
            print(error.localizedDescription)
            return nil
        }
    }
    
    class func consumedByJohnDoe(_ viewContext:NSManagedObjectContext) -> [Dessert]? {
        guard let customer = Customer.findCustomer(withFullName: "John Doe", context: viewContext)
        else { return nil }
        
        let request = Dessert.fetchRequest()
        let predicate = NSPredicate(format: "ANY fromCustomer == %@", customer)
        request.predicate = predicate
        
        do {
            guard let results = try viewContext.fetch(request) as? [Dessert],
                  results.count > 0
            else { return nil }
            return results
        } catch(let error) {
            print(error.localizedDescription)
            return nil
        }
    }
}
