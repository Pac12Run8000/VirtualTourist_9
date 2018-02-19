//
//  MapDetailViewController.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import UIKit
import MapKit

class MapDetailViewController: UIViewController {
    
    var locationAnnotation:MKAnnotation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("lat:\(locationAnnotation.coordinate.latitude), long:\(locationAnnotation.coordinate.longitude)")
        
    }

    

}
