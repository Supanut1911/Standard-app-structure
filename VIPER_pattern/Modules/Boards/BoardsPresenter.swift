//
//  BoardsPresenter.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

class BoardsPresenter: BoardsPresenterInterface {
    weak var view: BoardsViewInterface?
    var interactor: BoardsInteractorInterface?
    var router: BoardsRouterInterface?
}

extension BoardsPresenter: BoardsInteractorDelegate {
}
