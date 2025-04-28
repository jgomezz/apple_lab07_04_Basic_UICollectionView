//
//  ViewController.swift
//  apple_lab07_04_Basic_UICollectionView
//
//  Created by Jaime Gomez on 27/4/25.
//

import UIKit

class ViewController: UIViewController ,
                      UICollectionViewDataSource,
                      UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let items = Item.sampleItems()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        let item = items[indexPath.item]
        cell.configure(with: item)
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = items[indexPath.item]
        print("Selected: \(item.title)")
        
        // Show an alert when an item is tapped
        let alert = UIAlertController(title: item.title, message: "You selected \(item.title)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
