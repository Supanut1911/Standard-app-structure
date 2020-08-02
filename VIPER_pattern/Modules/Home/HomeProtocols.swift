//
//  HomeProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol HomePresenterInterface: class {
    var view: HomeViewInterface? { get set }
    var interactor: HomeInteractorInterface? { get set }
    var router: HomeRouterInterface? { get set }
}

protocol HomeViewInterface: class {
    var presenter: HomePresenterInterface? { get set }
}

protocol HomeRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol HomeInteractorInterface: class {
    var presenter: HomeInteractorDelegate? { get set }
}

protocol HomeInteractorDelegate: class {
}
