//
//  DetailViewController.swift
//  MSKTableView
//
//  Created by Alex Tishchenko on 3/10/20.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var scrollArray = [String]()
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.size.width, height: view.frame.size.width)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        collectionView.collectionViewLayout = layout
       
        collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at: .centeredHorizontally, animated: false)
    }
    

}


extension DetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellImage", for: indexPath) as? CollectionViewCell
        cell?.imageCollectionCell.image = UIImage(named: scrollArray[indexPath.row])
        
        return cell ?? UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return scrollArray.count
    }
}

extension DetailViewController: UICollectionViewDelegate {
    
}
