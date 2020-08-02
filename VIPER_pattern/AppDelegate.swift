//
//  AppDelegate.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 15/7/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window: UIWindow = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window.makeKeyAndVisible()
        switchViewIfNeed()
        
        return true
    }
    
    private func switchViewIfNeed() {
        let mode: String? = nil
        
        //case Used to Login
        if mode != nil {
            window.rootViewController = HomeRouter.createModule()
        } else {
            window.rootViewController = UINavigationController(appViewController: LoginRouter.createModule())
        }
       }
}

