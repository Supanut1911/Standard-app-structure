//
//  RootRouter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class RootRouter: RootRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = RootViewController()
        let presenter: RootPresenterInterface & RootInteractorDelegate = RootPresenter()
        let interactor: RootInteractorInterface = RootInteractor()
        let router: RootRouterInterface = RootRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        
        let viewControllers = [
            UINavigationController(rootViewController: BoardsRouter.createModule()),
            //            UINavigationController(apViewController: MyTasksRouter.createModule()),
            //            UINavigationController(apViewController: NotificationsRouter.createModule()),
            UINavigationController(rootViewController: AccountRouter.createModule()),
        ]
        viewController.viewControllers = viewControllers
        return viewController
    }
}
