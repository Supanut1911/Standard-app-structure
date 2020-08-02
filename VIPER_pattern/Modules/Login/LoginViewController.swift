//
//  LoginViewController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, StoryboardLoadable {
    var presenter: LoginPresenterInterface?

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
    }
    
    func checkTextFieldValid() {
        if emailTextField.text == "" &&
            passwordTextfield.text == "" {
            UIAlertController.showAlertMessage(with: "Pls fill email & password", viewController: self)
        } else if emailTextField.text == "" {
            UIAlertController.showAlertMessage(with: "Pls fill email", viewController: self)
        } else if passwordTextfield.text == "" {
            UIAlertController.showAlertMessage(with: "Pls fill  password", viewController: self)
        } else {
            
        }
    }
    
    func checkUser() {
        if emailTextField.text == "Admin" && passwordTextfield.text == "123456" {
            presenter?.showRoot()
        }
    }
    
    @IBAction func signInDidtap(_ sender: Any) {
        checkTextFieldValid()
        checkUser()
    }
    
    
}

extension LoginViewController: LoginViewInterface {
}
