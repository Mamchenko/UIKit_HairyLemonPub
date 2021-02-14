//
//  ViewController.swift
//  HairyLemon
//
//  Created by Anatoliy on 30.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    
    
    private let viewModel : LoginViewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view.backgroundColor = UIColor.green
        viewModel.showAlert = { [weak self] in
            let alertController : UIAlertController = UIAlertController(title: "Succses", message: "ok", preferredStyle: .alert)
            self?.present(alertController, animated: true, completion: nil)
            }
        
       
    }


    // fields
    let loginField : UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = UIColor.red
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    let passwordField : UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = UIColor.red
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
        
        
    }()
    let mainLogoImage : UIImageView = {
        let imageview = UIImageView(image: nil)
        return imageview
    }()
    
    
    let loginButton : UIButton = {
        let button : UIButton = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
       return button
    }()
    
    
    private func configureUI () {
        let loginTextField = loginField
        let passwordTextField = passwordField
        let imageView = mainLogoImage
         let button = loginButton
               button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        [loginTextField, passwordTextField, imageView, button].forEach { view.addSubview($0)
        }
        setupConstraintes()
    }
    
    private func setupConstraintes () {
        let loginFieldLeadingConstraint = NSLayoutConstraint(item: loginField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 32)
        let loginFieldTrailingConstraint = NSLayoutConstraint(item: loginField, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -32)
        let loginFieldTopConstraint = NSLayoutConstraint(item: loginField, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 250)
        let loginFieldBottomConstraint = NSLayoutConstraint(item: loginField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32)
        
        NSLayoutConstraint.activate([loginFieldLeadingConstraint, loginFieldTrailingConstraint, loginFieldTopConstraint, loginFieldBottomConstraint])
        
        
        let passwordFieldLeadingConstraint = NSLayoutConstraint(item: passwordField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 32)
        let passwordFieldTrailingConstraint = NSLayoutConstraint(item: passwordField, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -32)
        let passwordFieldTopConstraint = NSLayoutConstraint(item: passwordField, attribute: .top, relatedBy: .equal, toItem: loginField, attribute: .bottom, multiplier: 1, constant: 32)
        let passwordFieldBottomConstraint = NSLayoutConstraint(item: passwordField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32)
        
        NSLayoutConstraint.activate([passwordFieldLeadingConstraint, passwordFieldTrailingConstraint, passwordFieldTopConstraint, passwordFieldBottomConstraint])
        
        let loginButtonLeadingConstraint = NSLayoutConstraint(item: loginButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 32)
        let loginButtonTrailingConstraint = NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -32)
        let loginButtonTopConstraint = NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: passwordField, attribute: .bottom, multiplier: 1, constant: 32)
        let loginButtonBottomConstraint = NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 32)
        
        NSLayoutConstraint.activate([loginButtonLeadingConstraint, loginButtonTrailingConstraint, loginButtonTopConstraint, loginButtonBottomConstraint])
    }
    
    
   
    
   @objc func buttonTap (_ sender : UIButton ) {
    
    viewModel.buttonPressed()
        
        
        
    }
    
}



// коллекшен вью 



