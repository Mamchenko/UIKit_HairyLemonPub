//
//  Network.swift
//  HairyLemon
//
//  Created by Anatoliy on 28.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase

class NetworkManager  {
    
    private var reference : DatabaseReference!
    
    init() {
        reference = Database.database().reference()
    }
    
    var updateData : (([[String:Any]]) -> ())?
    
    func addTable (dict:[[String:Any]]) {
        reference.child("tables").setValue(dict)
    }
    
    func connect ()  {
        reference.child("tables").observe(.value) { [weak self] (snapShot) in
            if let shot = (snapShot.value) as! [[String:Any]]? {
                if let update = self?.updateData {
                    update(shot)
                }
            }
        }
    }
    
    
}
