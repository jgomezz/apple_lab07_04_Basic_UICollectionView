//
//  Item.swift
//  apple_lab07_04_Basic_UICollectionView
//
//  Created by Jaime Gomez on 27/4/25.
//

import UIKit

struct Item {
    let title: String
    let color: UIColor
    
    static func sampleItems() -> [Item] {
        return [
            Item(title: "Item 1", color: .systemBlue),
            Item(title: "Item 2", color: .systemGreen),
            Item(title: "Item 3", color: .systemOrange),
            Item(title: "Item 4", color: .systemPurple),
            Item(title: "Item 5", color: .systemRed),
            Item(title: "Item 6", color: .systemTeal)
        ]
    }
}
