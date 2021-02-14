//
//  MainSideMenuNavigationController.swift
//  HairyLemon
//
//  Created by Anatoliy on 30.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class MainSideMenuNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    func NavigationControllerConfig () {
        self.navigationItem.title = "Главная"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: <#T##Selector?#>)
    }
    

}
