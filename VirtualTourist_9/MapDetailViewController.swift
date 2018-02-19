//
//  MapDetailViewController.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import UIKit
import CoreData
import MapKit

class MapDetailViewController: UIViewController, MKMapViewDelegate {
    
    var locationAnnotation:MKAnnotation!

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("lat:\(locationAnnotation.coordinate.latitude), long:\(locationAnnotation.coordinate.longitude)")
        
    }

    

}
