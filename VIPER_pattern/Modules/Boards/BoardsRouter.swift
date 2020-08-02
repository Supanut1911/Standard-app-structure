//
//  BoardsRouter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class BoardsRouter: BoardsRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = UIStoryboard.loadViewController() as BoardsViewController
        let presenter: BoardsPresenterInterface & BoardsInteractorDelegate = BoardsPresenter()
        let interactor: BoardsInteractorInterface = BoardsInteractor()
        let router: BoardsRouterInterface = BoardsRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController
    }
}
