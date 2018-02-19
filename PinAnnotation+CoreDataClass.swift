//
//  PinAnnotation+CoreDataClass.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import Foundation
import CoreData


public class PinAnnotation: NSManagedObject {
    
    convenience init(lat:Double, long:Double, context:NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "PinAnnotation", in: context) {
            self.init(entity:ent, insertInto: context)
            self.lat = lat
            self.long = long
        } else {
            fatalError("Unable to find entity!")
        }
    }

}
