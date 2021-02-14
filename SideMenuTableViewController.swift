//
//  SideMenuTableViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 21.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


class SlideMenuTableViewController: UITableViewController {
    
  
    
    
    let cellidentifire : String = "cell"
    var menuArray : [String] = ["MapView", "deliveryScreen", "third"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellidentifire)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: cellidentifire, for: indexPath)
        cell.textLabel?.text = menuArray[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            let barMapVC : BarMapViewController = BarMapViewController()
            
        default:
            break
        }
    }
    
    }


