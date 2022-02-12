//
//  ViewController.swift
//  MapKitFramework
//
//  Created by Macbook Air on 12.02.2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(latitude: 39.9032923, longitude: 32.6226799)
        let span = MKCoordinateSpan(latitudeDelta: 0.75, longitudeDelta: 0.75)
        let zone = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(zone, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = location
        pin.title = "Ankara"
        pin.subtitle = "Subtitle"
        
        mapView.addAnnotation(pin)
        
        
    }

    

}

