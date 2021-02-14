//
//  AfishaCollectionViewCell.swift
//  HairyLemon
//
//  Created by Anatoliy on 23.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class AfishaCollectionViewCell: UICollectionViewCell {
    
    var imageview : UIImageView  {
        let view : UIImageView = UIImageView()
        view.backgroundColor = .red
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    var dataLabel : UILabel {
        let lbl : UILabel = UILabel()
        lbl.backgroundColor = .blue
        lbl.frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    var weekDayLabel : UILabel {
        let lbl : UILabel = UILabel()
        lbl.backgroundColor = .green
        lbl.frame = CGRect(x: 0, y: 250, width: 100, height: 100)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    
    
    
    func config () {
        let imageViewPoster = imageview
        let dataConcertLabel = dataLabel
        let dayConcertLabel = weekDayLabel
        
        [imageViewPoster, dataConcertLabel, dayConcertLabel].forEach {addSubview($0)}
        
    
        
        
    }
}
