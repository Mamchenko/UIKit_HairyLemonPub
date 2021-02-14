//
//  BasketViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 04.11.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import SnapKit

class BasketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var basketDict : [MenuModel:Int] = [:]
    let basketView : UIView = UIView()
    let basketTableView : UITableView = UITableView()
    let cellIdentifire = "cell"
    var keys: [MenuModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basketTableView.register(BasketTableViewCell.self, forCellReuseIdentifier: cellIdentifire)
        basketTableView.backgroundColor = .darkGray
        basketTableView.delegate = self
        basketTableView.dataSource = self
        basketView.backgroundColor = .black
        var data = FoodMenuStorage.shared.getProduct()
        for (k, v) in data {
            basketArrayAppend(id: k, count: v)
        }
        keys = Array(basketDict.keys)
        uIConfig()
    }
    
    
    func basketArrayAppend (id: Int, count: Int ) {
        
        if let menuItem = MenuSingltone.shared.getModelById(id: id) {
            basketDict[menuItem] = count
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basketDict.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : BasketTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifire, for: indexPath) as! BasketTableViewCell
        cell.cellElementsConfig()
        (cell.viewWithTag(PRICE_TAG) as! UILabel).text = "\(keys[indexPath.row].price)"
        (cell.viewWithTag(NAME_TAG) as! UILabel).text = keys[indexPath.row].name
        cell.countLabel.text = "\(basketDict[keys[indexPath.row]])"
        cell.priceLabel.textColor = .black
        cell.nameLabel.textColor = .black
        
        return cell
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200 
    }
       

    func uIConfig () {
        
        [basketView, basketTableView].forEach{view.addSubview($0)}
        
        basketTableView.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.basketView.snp.top)
            make.leading.equalTo(self.view.snp.leading)
            make.trailing.equalTo(self.view.snp.trailing)
            make.top.equalTo(self.view.snp.top)
        }
        
        basketView.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.view.snp.bottom)
            make.leading.equalTo(self.view.snp.leading)
            make.trailing.equalTo(self.view.snp.trailing)
            make.height.equalTo(100)
        }
    }

}
