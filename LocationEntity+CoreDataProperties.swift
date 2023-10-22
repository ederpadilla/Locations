//
//  LocationEntity+CoreDataProperties.swift
//  MyLocations
//
//  Created by Eder  Padilla on 21/10/23.
//
//

import Foundation
import CoreData
import CoreLocation


extension LocationEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocationEntity> {
        return NSFetchRequest<LocationEntity>(entityName: "LocationEntity")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var date: Date
    @NSManaged public var locationDescription: String
    @NSManaged public var category: String
    @NSManaged public var placemark: CLPlacemark?

}

extension LocationEntity : Identifiable {

}
