//
//  DetailTableViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 04.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import SnapKit

class DetailTableViewController: UIViewController {
    
    let identifire = "cell"
    let collectionViewCellIdentifireForTV = "collectionViewTableViewCell"
    var table : TableModel?
    let detailTableView : UITableView = UITableView()
    var reservedButton : UIButton = UIButton()
    
    
    var infoTextArray : [String] =  ["Номер стола", "Сумма депозита", "Количество мест за столом", "Доступность стола"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTableView.backgroundColor = .blue
        detailTableView.register(CustomInfoTableViewCells.self, forCellReuseIdentifier: identifire )
        detailTableView.register(PhotoViewCellTest.self, forCellReuseIdentifier: collectionViewCellIdentifireForTV)
        detailTableView.delegate = self
        detailTableView.dataSource = self
        view.backgroundColor = .green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contraintes()
    }

    func contraintes () {
        detailTableView.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
        reservedButton.frame = CGRect(x: 10, y: 10, width: 10, height: 10)
        [ detailTableView, reservedButton].forEach{view.addSubview($0)}
        reservedButton.backgroundColor = .red
        reservedButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.view.snp.bottom).offset(-10)
            make.leading.equalTo(self.view.snp.trailing).offset(-32)
            make.trailing.equalTo(self.view.snp.leading).offset(32)
            make.height.equalTo(64)
        }
        
        detailTableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.snp.top)
            make.leading.equalTo(self.view.snp.trailing)
            make.trailing.equalTo(self.view.snp.leading)
            make.bottom.equalTo(reservedButton.snp.top).offset(16)
        }
    }
    
    }

extension DetailTableViewController : UITableViewDelegate, UITableViewDataSource {
    
    
     func numberOfSections(in tableView: UITableView) -> Int {
         return 1
     }
    

      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        
         
         
         return 5
     }
     

      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if indexPath.row != 4 {
             let cell : CustomInfoTableViewCells = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath) as! CustomInfoTableViewCells
             cell.configurateCellElements()
             switch indexPath.row {
             case 0 :
                 cell.descriptionTextLabel.text = "\((table?.tableNumber)!) "
                 case 1 :
                     cell.descriptionTextLabel.text = "\((table?.price)!)"
                 case 2 :
                     cell.descriptionTextLabel.text = "\((table?.guestCount)!)"
                 case 3 :
                     cell.descriptionTextLabel.text = "\((table?.reserved)!)"
             
                 
             
             default:
                 break
             }
             
             cell.infoTextLabel.text = infoTextArray[indexPath.row]
             
             return cell
         } else {
             let photoCell : PhotoViewCellTest = tableView.dequeueReusableCell(withIdentifier: collectionViewCellIdentifireForTV, for: indexPath) as! PhotoViewCellTest
             photoCell.addingCollectionViewCellOnTableViewCell()
             return photoCell
             
         }
         
     }
     
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     
         if indexPath.row == 4 {
             return 290
         }
         return 50
     }
    
    
}


