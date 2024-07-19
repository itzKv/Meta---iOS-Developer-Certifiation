//
//  Customer+CoreDataProperties.swift
//  EntitiesContextRelationships
//
//  Created by Kevin Brivio on 17/07/24.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var fromLocation: NSSet?
    @NSManaged public var toDessert: Dessert?
    @NSManaged public var toDish: Dish?

}

// MARK: Generated accessors for fromLocation
extension Customer {

    @objc(addFromLocationObject:)
    @NSManaged public func addToFromLocation(_ value: Location)

    @objc(removeFromLocationObject:)
    @NSManaged public func removeFromFromLocation(_ value: Location)

    @objc(addFromLocation:)
    @NSManaged public func addToFromLocation(_ values: NSSet)

    @objc(removeFromLocation:)
    @NSManaged public func removeFromFromLocation(_ values: NSSet)

}

extension Customer : Identifiable {

}
