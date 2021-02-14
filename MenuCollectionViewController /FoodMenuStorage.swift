//
//  FoodMenuStorage.swift
//  HairyLemon
//
//  Created by Anatoliy on 27.10.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

class FoodMenuStorage {
    
    static var shared = FoodMenuStorage()
    
  
  private let KEY_FOR_USER_DEFAULTS = "menuData"
    
   private var data : [Int:Int]!
    
   private init() {
    
    if let dict = UserDefaults.standard.dictionary(forKey: KEY_FOR_USER_DEFAULTS) as? Data {
        do{
            data = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dict) as! [Int : Int]
        }
    } else {
        data = [:]
    }
        
    }
    
    
    func addProduct (id : Int) {
        if let value = data[id] {
            data[id]! += 1
        } else {
            data[id] = 1
        }
         save()
        print (data)
    }
    
    func removeProduct (id: Int) {
        if let value = data[id] {
            data.removeValue(forKey: id)
            save()
        }
    }
    
    
   private func save () {
    do {
    let saveData = try! NSKeyedArchiver.archivedData(withRootObject: data, requiringSecureCoding: false)
        
        UserDefaults.standard.set(saveData, forKey: KEY_FOR_USER_DEFAULTS)
    }
    }
    
    
    func getProduct () -> [Int:Int] {
        return data
    }
}
