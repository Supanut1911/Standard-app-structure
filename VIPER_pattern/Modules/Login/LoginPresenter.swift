//
//  LoginPresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresenterInterface {
    weak var view: LoginViewInterface?
    var interactor: LoginInteractorInterface?
    var router: LoginRouterInterface?
    
    func showRoot() {
        router?.presentRoot()
    }
}

extension LoginPresenter: LoginInteractorDelegate {
}
