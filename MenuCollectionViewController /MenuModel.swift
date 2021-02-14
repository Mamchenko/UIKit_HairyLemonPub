//
//  MenuModel.swift
//  HairyLemon
//
//  Created by Anatoliy on 13.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

struct MenuModel: MenuProtocol, Hashable {
    var name: String
    var price: Int
    var image: UIImage
    var id: Int
    
    
    static func == (lhs: MenuModel, rhs: MenuModel) -> Bool {
        return lhs.name == rhs.name &&
               lhs.id == rhs.id &&
               lhs.image == rhs.image &&
               lhs.price == rhs.price
    }
    
    public func hash (into hasher: inout Hasher) {
        hasher.combine((name))
        hasher.combine((price))
        hasher.combine((image))
        hasher.combine((id))
    }
    
    
}


protocol MenuProtocol {
    var name : String {get}
    var price : Int {get}
    var image : UIImage {get}
    var id : Int {get}
}
