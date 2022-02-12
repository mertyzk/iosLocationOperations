//
//  ViewController.swift
//  GoogleMaps-SDK
//
//  Created by Macbook Air on 12.02.2022.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var googleMapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 39.939605, longitude: 32.8488082, zoom: 17)
        googleMapView.camera = camera
        
        
    }


}

