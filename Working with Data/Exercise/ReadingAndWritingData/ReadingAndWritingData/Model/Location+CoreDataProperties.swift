//
//  Location+CoreDataProperties.swift
//  ReadingAndWritingData
//
//  Created by Kevin Brivio on 18/07/24.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var city: String?
    @NSManaged public var neighborhood: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var toDish: Dish?
    @NSManaged public var toCustomer: [Customer]?
    @NSManaged public var toDessert: Dessert?

}

extension Location : Identifiable {

}
