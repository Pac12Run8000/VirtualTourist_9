//
//  CustomCell.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // Mark: I used a property observer to build an image using Data
    var imageData:Data! {
        didSet {
            imageView.image = UIImage(data: imageData)
        }
    }
    
    
}
