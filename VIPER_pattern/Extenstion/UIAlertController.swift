//
//  UIAlertController.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

extension UIAlertController {
    class func showAlertMessage(with titleString: String, messageString: String? = nil, viewController: UIViewController?, dismissCallback :((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: titleString, message: messageString, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok".localized(), style: .default, handler: dismissCallback)
        alertController.addAction(okAction)
        viewController?.present(alertController, animated: true, completion: nil)
    }
    
    static func showAlertMessage(with error: Error, title: String? = nil, viewController: UIViewController?, dismissCallback :((UIAlertAction) -> Void)? = nil) {
        if let viewController = viewController {
            let alertController = UIAlertController(title: title ?? "Error" , message: error.localizedDescription, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "ok".localized(), style: .cancel, handler: dismissCallback)
            alertController.addAction(okAction)
            
            viewController.present(alertController, animated: true, completion: nil)
        }
    }
}
