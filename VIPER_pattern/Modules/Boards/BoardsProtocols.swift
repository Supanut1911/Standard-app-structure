//
//  BoardsProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol BoardsPresenterInterface: class {
    var view: BoardsViewInterface? { get set }
    var interactor: BoardsInteractorInterface? { get set }
    var router: BoardsRouterInterface? { get set }
}

protocol BoardsViewInterface: class {
    var presenter: BoardsPresenterInterface? { get set }
}

protocol BoardsRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol BoardsInteractorInterface: class {
    var presenter: BoardsInteractorDelegate? { get set }
}

protocol BoardsInteractorDelegate: class {
}
