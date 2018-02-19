//
//  ViewController.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapButtonOutlet: UIBarButtonItem!
    
    // Mark: Functionality pertaining to the bottom button and its ability to show or hide
    var button1:UIButton!
    var bottomButtonConstraint: NSLayoutConstraint!
    
    // Mark: This is the boolean value that dictates when you can add annotation or remove annotations
    var buttonOn:Bool = false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Mark: Prepare the bottom button to show or hide
        prepareShowButton()
        
    }

    @IBAction func editButtonPressed(_ sender: Any) {
        buttonOn ? hideButton() : showButton()
        buttonOn = !buttonOn
    }

}

// Mark: This function programmatically creates the RED button at the bottom of the page and animates its dissappearance and appearance on screen
extension MapViewController {
    
    func prepareShowButton() {
        
        button1 = UIButton(type: .system)
        button1.setTitle("Tap Pins to Delete", for: .normal)
        button1.backgroundColor = UIColor.red
        button1.tintColor = UIColor.white
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(button1)
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        let leftButtonEdgeConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.leading, multiplier: 1.0, constant: 0)
        let rightButtonEdgeConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.trailing, multiplier: 1.0, constant: 0)
        bottomButtonConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: 80)
        
        let heightConstraint = NSLayoutConstraint(item: button1, attribute: .height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 80)
        
        view.addConstraints([leftButtonEdgeConstraint, rightButtonEdgeConstraint, bottomButtonConstraint, heightConstraint])
        
    }
    
    // MARK: - Functionality to Show Bottom Button
    func showButton() {
        mapButtonOutlet.title = editButtonTitle(buttonOn)
        UIView.animate(withDuration: 0.5) {
            self.bottomButtonConstraint.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    // MARK: - Functionality to Hide Bottom Button
    func hideButton() {
        mapButtonOutlet.title = editButtonTitle(buttonOn)
        UIView.animate(withDuration: 0.5) {
            self.bottomButtonConstraint.constant = 80
            self.view.layoutIfNeeded()
        }
    }
    // Mark: Sets the title for the editButton on the navigation bar
    func editButtonTitle(_ isButtonOn:Bool) -> String {
        //        print("\(isButtonOn ? "Edit" : "Done")")
        return isButtonOn ? "Edit" : "Done"
    }


}


