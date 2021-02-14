//
//  MenuSingltone.swift
//  HairyLemon
//
//  Created by Anatoliy on 04.11.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

struct MenuSingltone {
    
    static  var shared = MenuSingltone()
    
    private init() {
    }
    
    var menuModelArray : [MenuModel] = [MenuModel(name: "burger", price: 300, image: UIImage(), id: 5), MenuModel(name: "salad", price: 280, image: UIImage(), id: 7)]
    
    func getModelById (id: Int) -> MenuModel? {
        for o in menuModelArray {
            if id == o.id {
                return o
            }
        }
        return nil
    }
}
