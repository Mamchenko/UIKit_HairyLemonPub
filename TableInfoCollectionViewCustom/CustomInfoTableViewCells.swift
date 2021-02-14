//
//  CustomInfoTableViewCells.swift
//  HairyLemon
//
//  Created by Anatoliy on 21.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class CustomInfoTableViewCells: UITableViewCell {

    let infoTextLabel : UILabel = UILabel()
    let descriptionTextLabel : UILabel = UILabel()
    
    
    
    
    func configurateCellElements () {
        infoTextLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextLabel.textAlignment = .right
        
        
        
        [descriptionTextLabel, infoTextLabel].forEach {addSubview($0)}
        
        let topinfoTextLabelContraint = NSLayoutConstraint(item: infoTextLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 1)
        let bottominfoTextLabelContraint = NSLayoutConstraint(item: infoTextLabel, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 1)
        let leadinginfoTextLabelContraint = NSLayoutConstraint(item: infoTextLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 20)
        
        let widthinfoTextLabelContraint = NSLayoutConstraint(item: infoTextLabel, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0.5, constant: 0)
        
        NSLayoutConstraint.activate([topinfoTextLabelContraint, bottominfoTextLabelContraint, leadinginfoTextLabelContraint,  widthinfoTextLabelContraint  ])
        
        let topDescriptionTextLabelContraint = NSLayoutConstraint(item: descriptionTextLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 1)
              let bottomDescriptionTextLabelContraint = NSLayoutConstraint(item: descriptionTextLabel, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 1)
        let trailingDescriptionTextLabelContraint = NSLayoutConstraint(item: descriptionTextLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -20)
              
        let widthDescriptionTextLabelContraint = NSLayoutConstraint(item: descriptionTextLabel, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0.5, constant: 0)
        
        NSLayoutConstraint.activate([topDescriptionTextLabelContraint, bottomDescriptionTextLabelContraint, trailingDescriptionTextLabelContraint,  widthDescriptionTextLabelContraint ])
    }

    

}
