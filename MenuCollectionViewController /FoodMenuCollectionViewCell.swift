//
//  FoodmMenuCollectionViewCell.swift
//  HairyLemon
//
//  Created by Anatoliy on 13.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import SnapKit
import SwiftHEXColors

class FoodMenuCollectionViewCell: UICollectionViewCell {
    
    let testDish : MenuModel = MenuModel(name: "burger", price: 300, image: UIImage(), id: 5)
    
    var dishImageView : UIImageView {
        let menuPhotoImageView = UIImageView()
        menuPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        menuPhotoImageView.contentMode = .scaleAspectFit
        menuPhotoImageView.transform = CGAffineTransform(rotationAngle: (15.0 * 3.14 / 180.0))
        menuPhotoImageView.layer.cornerRadius = 40.0
        menuPhotoImageView.backgroundColor = .darkGray
        menuPhotoImageView.clipsToBounds = true
        menuPhotoImageView.image = UIImage(named: "red1")
        menuPhotoImageView.contentMode = .right
        return menuPhotoImageView
    }
    
    var priceLbl : UILabel {
        let prcLabel = UILabel()
        prcLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        prcLabel.backgroundColor = UIColor(hexString: "#f7736e")
        prcLabel.translatesAutoresizingMaskIntoConstraints = false
        prcLabel.layer.cornerRadius = 4.0
        prcLabel.layer.masksToBounds = true
        return prcLabel
    }
    
    var descriotionDishLabel : UILabel {
        let lbl : UILabel = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        lbl.textColor = UIColor(hexString: "#f7736e")
        lbl.layer.masksToBounds = true
        lbl.layer.cornerRadius = 4.0
        return lbl
    }
    
    var nameLbl : UILabel {
        let productName = UILabel()
        productName.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        productName.translatesAutoresizingMaskIntoConstraints = false
        productName.backgroundColor = UIColor(hexString: "#11313c")
        return productName
    }
    
    var addingToBascket: UIButton {
        let button : UIButton = UIButton()
        button.backgroundColor = UIColor(hexString: "#11313c")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4.0
        return button
    }
    
    func configCollectionViewElements () {
        
        let button = addingToBascket
        let nameLabel = nameLbl
        let priceLabel = priceLbl
        let foodImageView = dishImageView
        
        [button, nameLabel, priceLabel, foodImageView].forEach {addSubview($0)}
        
       // let descriptionLabel = descriotionDishLabel
        
        button.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.snp.trailing).offset(-7)
            make.width.equalTo(self.snp.width).multipliedBy(0.5)
            make.bottom.equalTo(self.snp.bottom).offset(-15)
            make.height.equalTo(45)
           // make.top.equalTo(priceLabel.snp.bottom)
            //make.right.equalTo(self).multipliedBy(0.5)
        }
        
        foodImageView.snp.makeConstraints { (make) in
            make.trailing.equalTo(self.snp.trailing).offset(0)
            make.leading.equalTo(self.snp.leading).offset(-50)
            make.top.equalTo(self.snp.top).offset(-40)
            make.height.equalTo(self).multipliedBy(0.6)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self.snp.leading).offset(6)
            make.width.equalTo(self.snp.width).multipliedBy(0.9)
            make.bottom.equalTo(priceLabel.snp.top).offset(-10)
            make.height.equalTo(45)
        }
        
        priceLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self.snp.leading).offset(6)
            make.width.equalTo(self.snp.width).multipliedBy(0.4)
            make.bottom.equalTo(self.snp.bottom).offset(-15)
            make.height.equalTo(45)
        }
        
        
        buttonConfig(button: button)
        
        
        
        
    }
    
    func buttonConfig (button : UIButton) {
        button.addTarget(self, action: #selector(addingToBasket), for: .touchUpInside)
    }
    
    @objc func addingToBasket (_ sender : UIButton) {
        FoodMenuStorage.shared.addProduct(id: testDish.id)
    }
}
