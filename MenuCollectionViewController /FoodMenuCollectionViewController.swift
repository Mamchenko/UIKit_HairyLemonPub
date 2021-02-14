//
//  FoodMenuCollectionViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 13.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import SnapKit

private let reuseIdentifier = "foodMenuCell"

class FoodMenuCollectionViewController: UICollectionViewController {
    
   
    let basketButton = UIButton(frame: CGRect(x: 200, y: 500, width: 100, height: 100))
    
    
    init(size: CGSize) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        // layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        layout.itemSize = CGSize(width: (CGFloat(size.width)/CGFloat(2)) - 25, height: ( CGFloat(size.height)/CGFloat(2.5)) - 20 )
        super.init(collectionViewLayout: layout)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        
        
        
        self.collectionView!.register(FoodMenuCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        let edgeInsets : UIEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        self.collectionView.bounds = collectionView.frame.inset(by: edgeInsets)
        self.collectionView.backgroundColor = .blue
        buttonConfig()
        buttonAction(button: basketButton)
        
        
    }
    
    func buttonAction (button : UIButton) {
        button.addTarget(self, action: #selector(openBasket), for: .touchUpInside)
    }
    
  @objc func openBasket () {
        let basketViewController = BasketViewController()
        self.show(basketViewController, sender: nil)
    }
    func buttonConfig() {
        basketButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(basketButton)
        basketButton.backgroundColor = .purple
        basketButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.view.snp.bottom).offset(-10)
            make.leading.equalTo(self.view.snp.leading).offset(100)
            make.trailing.equalTo(self.view.snp.trailing).offset(-100)
            make.height.equalTo(100)
            
        }
        
        
        
    }
    
    
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 30
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : FoodMenuCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FoodMenuCollectionViewCell
        cell.contentView.layer.cornerRadius = 2.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        cell.backgroundColor = .purple
        cell.clipsToBounds = true 
        cell.configCollectionViewElements()
        
        return cell
    }
    
    
    
    
    
    
}
