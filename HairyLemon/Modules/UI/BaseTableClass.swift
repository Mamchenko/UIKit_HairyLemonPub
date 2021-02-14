//
//  BaseTableClass.swift
//  HairyLemon
//
//  Created by Anatoliy on 01.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//



import Foundation
import UIKit


class TableButton : UIButton  {

    
    
    var tableModel : TableModel
   
    
    var tableWidth: Int {
        return tableModel.tableType.tableSizeConfig().width
    }
    var tableHeight: Int {
        return tableModel.tableType.tableSizeConfig().height
    }
    
    var tableX : Int {
        return tableModel.cellIndex.x
    }
    var tableY : Int {
        return tableModel.cellIndex.y
    }
    
    
    init(tableModel: TableModel) {
        self.tableModel = tableModel
       
        
        super.init(frame: CGRect())
         self.setImage(self.tableModel.tableType.tableImageConfig(), for: .normal)
    }

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}





