//
//  LoginViewModel.swift
//  HairyLemon
//
//  Created by Anatoliy on 27.09.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

class LoginViewModel {
    
    
    var showAlert: (() -> ())?
    var phoneAuthorization: (() -> ())?
    var mailAutorization : (() -> ())?
    
    
    func buttonPressed () {
        guard let alert = showAlert else { return}
        alert()
    }
    
}
