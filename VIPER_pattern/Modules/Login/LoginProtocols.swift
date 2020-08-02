//
//  LoginProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol LoginPresenterInterface: class {
    var view: LoginViewInterface? { get set }
    var interactor: LoginInteractorInterface? { get set }
    var router: LoginRouterInterface? { get set }
    
    func showRoot()
}

protocol LoginViewInterface: class {
    var presenter: LoginPresenterInterface? { get set }
}

protocol LoginRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
    
    func presentRoot()
}

protocol LoginInteractorInterface: class {
    var presenter: LoginInteractorDelegate? { get set }
}

protocol LoginInteractorDelegate: class {
}
