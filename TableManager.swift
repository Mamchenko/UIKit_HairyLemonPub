//
//  TableManager.swift
//  HairyLemon
//
//  Created by Anatoliy on 30.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

class TableManager {
    
    private let networkManager : NetworkManager = NetworkManager()
    
    
    
    var tableArray : [TableModel]?
    var tableClosure : (([TableModel]) -> ())?
    
    
    
    func connect () {
        networkManager.updateData = { [weak self] (tables) in
            if self?.tableArray == nil { self?.tableArray = [ ]}
            for tableDict in tables {
                let tableModel = TableModel(dict: tableDict)
                self?.tableArray?.append(tableModel)
            }
            if let closure = self?.tableClosure {
                closure((self?.tableArray!)!)
            }
            
        }
        
        networkManager.connect()
    }
    
    
}
    
   /* var tableArray : [TableModel] = [TableModel(tableNumber: 1, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 4, y : 4)),
                                     TableModel(tableNumber: 2, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 6, y : 4)),
                                     TableModel(tableNumber: 3, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 4, y : 6)),
                                     TableModel(tableNumber: 4, price: 2000, guestCount: 2, reserved: false, tableType: .round, cellIndex: (x: 6 , y: 6 )),
                                     TableModel(tableNumber: 5, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 9 , y: 2 )),
                                     TableModel(tableNumber: 6, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 11 , y: 2 )),
                                     TableModel(tableNumber: 7, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 9 , y: 4 )),
                                     TableModel(tableNumber: 8, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 11 , y: 4 )),
                                     TableModel(tableNumber: 9, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 9 , y: 6 )),
                                     TableModel(tableNumber: 10, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 11 , y: 6 )),
                                     TableModel(tableNumber: 11, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 9 , y: 8 )),
                                     TableModel(tableNumber: 12, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 11 , y: 8 )),
                                     TableModel(tableNumber: 13, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 7 , y: 8 )),
                                     TableModel(tableNumber: 14, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 9 , y: 10 )),
                                     TableModel(tableNumber: 15, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 11 , y: 10 )),
                                     TableModel(tableNumber: 16, price: 2000, guestCount: 4, reserved: false, tableType: .round, cellIndex: (x: 7 , y: 12 )),
                                     TableModel(tableNumber: 17, price: 5000, guestCount: 6, reserved: false, tableType: .square, cellIndex: (x: 13 , y: 10 )),
                                     TableModel(tableNumber: 18, price: 5000, guestCount: 6, reserved: false, tableType: .square, cellIndex: (x: 13 , y: 7 )),
                                     TableModel(tableNumber: 20, price: 5000, guestCount: 6, reserved: false, tableType: .square, cellIndex: (x: 13 , y: 4 )),
                                     TableModel(tableNumber: 21, price: 5000, guestCount: 6, reserved: false, tableType: .square, cellIndex: (x: 13 , y: 1 ))]*/
    
   
    
    
