//
//  BarMapViewModel.swift
//  HairyLemon
//
//  Created by Anatoliy on 28.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

class BarMapViewModel {
    let tableManager : TableManager = TableManager()
    
    
    var addingTable : ((TableButton) -> ())?
    
    func viewDidLoad () {
        
        tableManager.tableClosure = {[weak self] tables in
                for t in tables {
                    let tableButton = TableButton(tableModel: t)
                    if let addButton = self?.addingTable {
                        addButton(tableButton)
                    
                }
            }
            
        }
        tableManager.connect()
    }
}


/*
 for (i, t) in tableArray.enumerated() {
 let button : TableButton = TableButton(tableModel: t, tableSize: (Table), cellIndex:  cellIndexArray[i])
 
 guard let addButton = addingTable else {return}
 addButton(button)*/
