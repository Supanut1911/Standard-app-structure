//
//  AccountProtocols.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol AccountPresenterInterface: class {
    var view: AccountViewInterface? { get set }
    var interactor: AccountInteractorInterface? { get set }
    var router: AccountRouterInterface? { get set }
}

protocol AccountViewInterface: class {
    var presenter: AccountPresenterInterface? { get set }
}

protocol AccountRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol AccountInteractorInterface: class {
    var presenter: AccountInteractorDelegate? { get set }
}

protocol AccountInteractorDelegate: class {
}
