//
//  MapView.swift
//  HairyLemon
//
//  Created by Anatoliy on 02.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

typealias TableIndex = (x: Int, y: Int)
typealias TableSize = (width : Int, height : Int)

class MapView: UIView {
    

    private let widthCellCount : Int = 15
    private let heightCellCount : Int = 25
    
    
    private var widthCell :  CGFloat = 0
    private var heightCell : CGFloat = 0
    
    
    
    
    func configurate () {
        
        self.widthCell = frame.size.width / CGFloat(widthCellCount)
        self.heightCell = frame.size.height / CGFloat(heightCellCount)
        
        
        for h in 0...heightCellCount - 1  {
            for w in 0...widthCellCount - 1{
                let cellFrame : CGRect = CGRect(x: widthCell * CGFloat(w), y:  heightCell * CGFloat(h), width: widthCell, height: heightCell)
                
                let cell = UIView(frame: cellFrame)
                cell.backgroundColor = UIColor(red: 26/255,
                                               green: 86/255,
                                               blue: 77/255,
                                               alpha: 1)
               
                addSubview(cell)
            }
            
        }

        
        
    }
    

    
    func addView (  table : TableButton) {
        let tableFrame : CGRect = CGRect(
            x: CGFloat(table.tableX) * widthCell,
            y: CGFloat(table.tableY) * heightCell,
            width: widthCell * CGFloat(table.tableWidth),
            height: heightCell * CGFloat(table.tableHeight))
        table.frame = tableFrame
        table.backgroundColor = UIColor(red: 239/255,
                                        green: 203/255,
                                        blue: 0,
                                        alpha: 0)
        addSubview(table)
        
        
        
    }
 
}



