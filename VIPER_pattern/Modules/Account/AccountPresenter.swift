//
//  AccountPresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class AccountPresenter: AccountPresenterInterface {
    weak var view: AccountViewInterface?
    var interactor: AccountInteractorInterface?
    var router: AccountRouterInterface?
}

extension AccountPresenter: AccountInteractorDelegate {
}
