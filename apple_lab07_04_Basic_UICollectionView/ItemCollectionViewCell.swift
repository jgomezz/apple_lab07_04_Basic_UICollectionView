//
//  ItemCollectionViewCell.swift
//  apple_lab07_04_Basic_UICollectionView
//
//  Created by Jaime Gomez on 27/4/25.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
        
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with item: Item) {
        titleLabel.text = item.title
        colorView.backgroundColor = item.color
        
        // Add rounded corners
        // colorView.layer.cornerRadius = 8
        // colorView.layer.masksToBounds = true
    }
}
