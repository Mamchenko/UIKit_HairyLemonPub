//
//  AfishaView.swift
//  HairyLemon
//
//  Created by Anatoliy on 23.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

class PosterView: UIView {
    
    private var posterCollectionView : UICollectionView?
    private let identifire = "collectionViewCell"
    
    
    init() {
        
        super.init(frame: CGRect())
        
        
        let collectionviewLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionviewLayout.itemSize = CGSize(width: 200, height: 400)
        self.posterCollectionView = UICollectionView(frame: self.frame, collectionViewLayout: collectionviewLayout)
        posterCollectionView!.register(AfishaCollectionViewCell.self, forCellWithReuseIdentifier: identifire)
        addSubview(posterCollectionView!)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

extension PosterView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : AfishaCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! AfishaCollectionViewCell
        return cell 
    }
    
    
    
    
    
}
