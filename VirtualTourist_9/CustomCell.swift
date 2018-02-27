//
//  CustomCell.swift
//  VirtualTourist_9
//
//  Created by Michelle Grover on 2/19/18.
//  Copyright © 2018 Norbert Grover. All rights reserved.
//

import UIKit

protocol CustomCellDelegate: class {
    func delete(cell:CustomCell)
}

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var deleteButtonBackgroundView: UIVisualEffectView!
    
    // Mark: Reference to the delegate
    weak var delegate:CustomCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        deleteButtonBackgroundView.layer.cornerRadius = deleteButtonBackgroundView.bounds.height / 2.0
        deleteButtonBackgroundView.layer.masksToBounds = true
        deleteButtonBackgroundView.isHidden = !isEditing
    }
    
    // Mark: I used a property observer to build an image using Data
    var imageData:Data! {
        didSet {
            imageView.image = UIImage(data: imageData)
        }
    }
    
    var isEditing:Bool = false {
        didSet {
            deleteButtonBackgroundView.isHidden = !isEditing
        }
    }
    
    @IBAction func deleteButtonDidTap(_ sender: Any) {
        delegate?.delete(cell: self)
    }
    
}
