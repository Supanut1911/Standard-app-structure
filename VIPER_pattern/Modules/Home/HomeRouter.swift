//
//  HomeRouter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class HomeRouter: HomeRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as HomeViewController
        let presenter: HomePresenterInterface & HomeInteractorDelegate = HomePresenter()
        let interactor: HomeInteractorInterface = HomeInteractor()
        let router: HomeRouterInterface = HomeRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
