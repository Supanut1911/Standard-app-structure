//
//  String.swift
//  VIPER_pattern
//
//  Created by Supanut Laddayam on 2/8/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//


import Foundation
import UIKit

extension String {
    
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, value: "**\(self)**", comment: comment)
    }
    
//    init(absoluteURLStringWithPercentEscapedPath path: String) {
//        if !path.hasPrefix("http") {
//            self = Config.BaseAPIURL + (path.hasPrefix("/") ? path : "/" + path)
//        } else {
//            self = path
//        }
//    }
    
    static func currencyString(with value: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .decimal
        return formatter.string(from: value as NSNumber) ?? "\(value)"
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return ceil(boundingBox.width)
    }
    
    func dateValue(_ format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        return dateFormatter.date(from:self) ?? Date()
    }
    
    var fileExtension: String {
        URL(fileURLWithPath: self).pathExtension
    }
    
    func convertHtml() -> NSMutableAttributedString {
        guard let data = data(using: .utf8) else { return NSMutableAttributedString() }
        
        if let attributedString = try? NSMutableAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil) {
            return attributedString
        } else {
            return NSMutableAttributedString()
        }
    }
    
//    public func setCSS(size: CGFloat = 0, color: UIColor = .black) -> String {
//        let html = "<font color=\(color.colorToHex()) size=\(size)>\(self)</font>";
//        let modifiedFont = "<span style=\"font-family: '-apple-system', 'HelveticaNeue'; font-size: \(size)pt\">\(html)</span>"
//
//        return modifiedFont
//    }
}

