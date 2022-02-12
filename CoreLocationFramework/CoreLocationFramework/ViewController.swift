//
//  ViewController.swift
//  CoreLocationFramework
//
//  Created by Macbook Air on 10.02.2022.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    var locationManager:CLLocationManager = CLLocationManager()
    
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
        
    }


}

extension ViewController:CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastPosition:CLLocation = locations[locations.count-1]
        
        latitudeLabel.text = "Latitude: \(lastPosition.coordinate.latitude)"
        longitudeLabel.text = "Longitude: \(lastPosition.coordinate.longitude)"
        speedLabel.text = "Speed: \(lastPosition.speed)"
    }
    
}
