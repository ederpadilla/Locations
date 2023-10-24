//
//  LocationEntity+CoreDataClass.swift
//  MyLocations
//
//  Created by Eder  Padilla on 21/10/23.
//
//

import Foundation
import CoreData
import MapKit

@objc(LocationEntity)
public class LocationEntity: NSManagedObject, MKAnnotation {
    
    public var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2DMake(latitude, longitude)
    }
    
    public var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }
    
    public var subtitle: String? {
        category
    }
    
}
