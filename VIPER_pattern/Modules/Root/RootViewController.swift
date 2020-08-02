//
//  RootViewController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController, StoryboardLoadable {
    var presenter: RootPresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isOpaque = true
    }
}

extension RootViewController: RootViewInterface {
}
