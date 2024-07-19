//
//  Dish+CoreDataProperties.swift
//  ReadingAndWritingData
//
//  Created by Kevin Brivio on 18/07/24.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var name: String?
    @NSManaged public var size: String?
    @NSManaged public var price: Float
    @NSManaged public var fromCustomer: NSSet?
    @NSManaged public var fromLocation: Location?

}

// MARK: Generated accessors for fromCustomer
extension Dish {

    @objc(addFromCustomerObject:)
    @NSManaged public func addToFromCustomer(_ value: Customer)

    @objc(removeFromCustomerObject:)
    @NSManaged public func removeFromFromCustomer(_ value: Customer)

    @objc(addFromCustomer:)
    @NSManaged public func addToFromCustomer(_ values: NSSet)

    @objc(removeFromCustomer:)
    @NSManaged public func removeFromFromCustomer(_ values: NSSet)

}

extension Dish : Identifiable {

}
