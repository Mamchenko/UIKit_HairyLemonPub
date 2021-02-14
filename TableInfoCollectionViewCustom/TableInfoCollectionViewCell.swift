//
//  TableInfoCollectionViewCell.swift
//  HairyLemon
//
//  Created by Anatoliy on 11.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class TableInfoCollectionViewCell: UICollectionViewCell {
        
        private var label : UILabel {
            let lbl : UILabel = UILabel()
            lbl.translatesAutoresizingMaskIntoConstraints = false
            return lbl
            
        }
       private var tableImage : UIImageView {
            let tbl : UIImageView = UIImageView()
            tbl.translatesAutoresizingMaskIntoConstraints = false
            tbl.contentMode = .scaleAspectFit
            return tbl
        }
        
    var isConfigurated : Bool = false
        
        func configurate ( image : UIImage, text: String ) {
            
            if !isConfigurated {
            
            let tableImageConfig  = tableImage
            let labelConfig = label
            
            [tableImageConfig, labelConfig].forEach {  addSubview($0) }
            
                
                
            
            tableImageConfig.image = image
            tableImageConfig.contentMode = .scaleToFill
            tableImageConfig.layer.cornerRadius = 10.0
            tableImageConfig.layer.shadowColor = UIColor.black.cgColor
            tableImageConfig.layer.shadowOffset = .zero
            tableImageConfig.layer.shadowRadius = 7.0
            tableImageConfig.layer.shadowOpacity = 0.8
            
            
            labelConfig.text = text
            labelConfig.textAlignment = .center
            
            
            
           let bottomLabelConstraint =  NSLayoutConstraint(item: labelConfig, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
            let topLabelConstraint =  NSLayoutConstraint(item: labelConfig, attribute: .top, relatedBy: .equal, toItem: tableImageConfig, attribute: .bottom, multiplier: 1, constant: 0)
            let leadingLabelConstraint = NSLayoutConstraint(item: labelConfig, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
           let trailingLabelConstraint =   NSLayoutConstraint(item: labelConfig, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
            let heightLabelConstraint = NSLayoutConstraint(item: labelConfig, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50)
            
             NSLayoutConstraint.activate([bottomLabelConstraint, topLabelConstraint, leadingLabelConstraint, trailingLabelConstraint, heightLabelConstraint])
            
            let bottomtableImageConstraint =  NSLayoutConstraint(item: tableImageConfig, attribute: .bottom, relatedBy: .equal, toItem: labelConfig, attribute: .top, multiplier: 1, constant: 0)
             let toptableImageConstraint =  NSLayoutConstraint(item: tableImageConfig, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 10)
              let leadingtableImageConstraint = NSLayoutConstraint(item: tableImageConfig, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 10)
            let trailingtableImageConstraint =   NSLayoutConstraint(item: tableImageConfig, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 10)
            
           
            
            
            
            NSLayoutConstraint.activate([bottomtableImageConstraint, toptableImageConstraint, leadingtableImageConstraint, trailingtableImageConstraint])
            
            }
            isConfigurated = true
            
            
            
        }
        
        
        
    }

    

