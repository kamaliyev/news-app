//
//  CollectionViewController.swift
//  news app 1
//
//  Created by Kamil Aliyev  on 22.03.23.
//

import UIKit


class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var listCollection: UICollectionViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as! NewsCell
        firstCell.newsImage.image = UIImage
        
        return firstCell
    }
 } 
