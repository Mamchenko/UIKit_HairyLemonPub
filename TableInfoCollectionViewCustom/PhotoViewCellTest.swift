//
//  CollectionViewCellTest.swift
//  HairyLemon
//
//  Created by Anatoliy on 09.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class PhotoViewCellTest: UITableViewCell {
    
    
    
    var collectionView : UICollectionView?
    
    let collectionViewIdentifire : String = "collectionViewCell"
    
    var tablePhotoArray : [UIImage] = [UIImage(named : "g1")!, UIImage(named : "beluga1")!, UIImage(named : "red1")!]
    var collectionViewText : [String] = ["1", "2", "3"]
    
    
    func addingCollectionViewCellOnTableViewCell () {
        
        let collectionViewLayout = UICollectionViewFlowLayout()
        let CGSizeCollectionView = CGSize(width: 250, height: 300)
        collectionViewLayout.itemSize = CGSizeCollectionView
        
            
        
        
        let collectionViewPosition = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        collectionView = UICollectionView(frame: collectionViewPosition, collectionViewLayout: collectionViewLayout)
        
        collectionView?.isScrollEnabled = true
        collectionViewLayout.minimumInteritemSpacing = 10
        collectionViewLayout.scrollDirection = .horizontal
        collectionView?.backgroundColor = .white
        
       
        collectionView?.register(TableInfoCollectionViewCell.self, forCellWithReuseIdentifier: collectionViewIdentifire)
        
       
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
         addSubview(collectionView!)
        
        
        
    }
    
}








extension PhotoViewCellTest : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tablePhotoArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : TableInfoCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewIdentifire, for: indexPath) as! TableInfoCollectionViewCell
        
       
        cell.configurate(image: tablePhotoArray[indexPath.row], text: collectionViewText[indexPath.row])
        
        
        return cell
        
    }
    
    
    
    
}


