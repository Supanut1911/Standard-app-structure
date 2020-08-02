//
//  LoginRouter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class LoginRouter: LoginRouterInterface {
    weak var rootViewController: UIViewController?
    
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as LoginViewController
        let presenter: LoginPresenterInterface & LoginInteractorDelegate = LoginPresenter()
        let interactor: LoginInteractorInterface = LoginInteractor()
        let router: LoginRouterInterface = LoginRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
    
    func presentRoot() {
        let rootViewcontroller = RootRouter.createModule()
        let navigationVC = UINavigationController.init(rootViewController: rootViewcontroller)
        navigationVC.modalPresentationStyle = .fullScreen
//        navigationVC.navigationItem.title = "HOME"
//        navigationVC.navigationBar.topItem?.title = "HOME"
        viewController?.present(navigationVC, animated: true, completion: nil)
    }
}
