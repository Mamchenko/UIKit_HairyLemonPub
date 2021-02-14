//
//  BasketTableViewCell.swift
//  HairyLemon
//
//  Created by Anatoliy on 04.11.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import SnapKit


let IMAGE_TAG = 0
let NAME_TAG = 1
let PRICE_TAG = 2
 

class BasketTableViewCell: UITableViewCell {

    var viewImage : UIImageView {
        let viewImage : UIImageView = UIImageView()
        viewImage.translatesAutoresizingMaskIntoConstraints = false
        return viewImage
    }
    
    var nameLabel : UILabel {
        let name: UILabel = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }
    
    var plusButton : UIButton {
      let button = UIButton ()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    var minusButton : UIButton {
      let button = UIButton ()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    var countLabel : UILabel {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    var priceLabel : UILabel {
        let label : UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    
    
    func cellElementsConfig () {
        let image = viewImage
        let name = nameLabel
        let buttonP = plusButton
        let buttonM = minusButton
        let countlabel = countLabel
        let price = priceLabel
        
        image.tag = IMAGE_TAG
        price.tag = PRICE_TAG
        name.tag =  NAME_TAG
        
        
        [image, name, buttonP, buttonM, countlabel, price].forEach{addSubview($0)}
        
        image.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top).offset(16)
            make.leading.equalTo(self.snp.leading).offset(16)
            make.bottom.equalTo(self.snp.bottom).offset(-16)
            make.width.equalTo(168)
        }
        
        name.snp.makeConstraints { (make) in
            make.leading.equalTo(image.snp.trailing).offset(16)
            make.trailing.equalTo(price.snp.leading).offset(-16)
            make.top.equalTo(self.snp.top).offset(16)
            make.height.equalTo(48)
        }
        
        price.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.snp.trailing).offset(-16)
            make.width.equalTo(self).multipliedBy(0.2)
            make.top.equalTo(self.snp.top).offset(16)
            make.height.equalTo(48)
        }
        
        
    }

}
