//
//  UINavigationController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

extension UINavigationController {
    convenience init(appViewController: UIViewController) {
        self.init(rootViewController: appViewController)
        navigationBar.isTranslucent = false
        tabBarItem = appViewController.tabBarItem
        modalPresentationStyle = .fullScreen
        navigationBar.titleTextAttributes = [NSAttributedString.Key.font: FontUtils.apFont(ofSize: 18, weight: .bold)]
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}
