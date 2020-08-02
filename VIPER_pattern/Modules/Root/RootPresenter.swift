//
//  RootPresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class RootPresenter: RootPresenterInterface {
    weak var view: RootViewInterface?
    var interactor: RootInteractorInterface?
    var router: RootRouterInterface?
}

extension RootPresenter: RootInteractorDelegate {
}
