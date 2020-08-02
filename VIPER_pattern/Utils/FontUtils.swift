//
//  FontUtils.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

struct FontUtils {
    static func apFont(ofSize size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont {
//        var name = "Prompt-Regular"
//        switch weight {
//        case .light, .ultraLight:
//            name = "Prompt-Light"
//        case .regular:
//            name = "Prompt-Regular"
//        case .semibold:
//            name = "Prompt-SemiBold"
//        case .medium:
//            name = "Prompt-Medium"
//        case .bold:
//            name = "Prompt-Bold"
//        default:
//            break
//        }
//        return UIFont(name: name, size: size)!
        return UIFont.systemFont(ofSize: size, weight: weight)
    }
}

