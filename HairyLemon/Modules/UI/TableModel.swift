//
//  TableModel.swift
//  HairyLemon
//
//  Created by Anatoliy on 01.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

import UIKit

struct TableModel  {
    
     var tableNumber : Int
     var price : Int
     var guestCount : Int
     var reserved : Bool
     var  tableType : TableType
     var cellIndex : TableIndex
    
    func toDictinory () -> [String : Any] {
        var dict : [String : Any] = [ : ]
        dict["tableNumber"] = tableNumber
        dict["price"] = price
        dict["guestCount"] = guestCount
        dict["reserved"] = reserved
        dict["tableType"] = tableType.rawValue
        dict["cellIndex"] = ["x" : cellIndex.x, "y" : cellIndex.y]
        return dict
    }
    
    
    init(dict : [String : Any]) {
        self.tableNumber =  dict["tableNumber"] as! Int
        self.price =  dict["price"] as! Int
        self.guestCount =  dict["guestCount"] as! Int
        self.reserved =  dict["reserved"] as! Bool
        self.tableType = TableType (rawValue:dict["tableType"] as! String)!
        let cellIndexDict = (dict["cellIndex"] as! [String:Int])
        self.cellIndex = TableIndex (x:cellIndexDict["x"]!, y:cellIndexDict["y"]!)
    }
    
    func toModel (dict : [String : Any]) {
        
    }
}

enum TableType : String  {
    case round = "round"
    case square = "square"
    case vip = "vip"
    
    func tableqImageConfig () -> UIImage {
        switch self {
        case .round:
            return UIImage(named: "roundTable")!
        case .square:
            return UIImage(named: "squareTable")!
            case .vip:
                return UIImage(named: "vipTable")!
            
        }
    }
    
    func tableSizeConfig () -> TableSize {
        switch self {
        case .round:
          return TableSize(width : 1, height : 1)
        case .square:
          return TableSize(width : 2, height : 3)
        case .vip:
         return TableSize(width : 2, height : 4)
        
        }
    }
}


