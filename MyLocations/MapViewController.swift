//
//  MapViewController.swift
//  MyLocations
//
//  Created by Eder  Padilla on 24/10/23.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    var managedObjectContext: NSManagedObjectContext!
    var locations = [LocationEntity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocations()
    }
    
    // MARK: - Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegion(
            center: mapView.userLocation.coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000)
        mapView.setRegion(
            mapView.regionThatFits(region),
            animated: true)
    }
    
    @IBAction func showLocations() {
    }
    
    func updateLocations() {
        mapView.removeAnnotations(locations)
        
        let entity = LocationEntity.entity()
        
        let fetchRequest = NSFetchRequest<Location>()
        fetchRequest.entity = entity
        
        locations = try! managedObjectContext.fetch(fetchRequest)
        mapView.addAnnotations(locations)
    }
}

extension MapViewController: MKMapViewDelegate {
}
