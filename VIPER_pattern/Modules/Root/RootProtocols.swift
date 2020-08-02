//
//  RootProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol RootPresenterInterface: class {
    var view: RootViewInterface? { get set }
    var interactor: RootInteractorInterface? { get set }
    var router: RootRouterInterface? { get set }
}

protocol RootViewInterface: class {
    var presenter: RootPresenterInterface? { get set }
}

protocol RootRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol RootInteractorInterface: class {
    var presenter: RootInteractorDelegate? { get set }
}

protocol RootInteractorDelegate: class {
}
