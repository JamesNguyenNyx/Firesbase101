//
//  AppFont.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

enum AppFontStyle {
    case light, book, oblique, medium, roman, heavy, none
}


class AppFont {
    static func appFontWithStyle(_ style: AppFontStyle, _ size: CGFloat) -> UIFont {
        switch style {
        case .light:
            return UIFont(name: "Avenir-Light", size: size) ?? UIFont.systemFont(ofSize: size)
        case .book:
            return UIFont(name: "Avenir-Book", size: size) ?? UIFont.systemFont(ofSize: size)
        case .oblique:
            return UIFont(name: "Avenir-Oblique", size: size) ?? UIFont.systemFont(ofSize: size)
        case .medium:
            return UIFont(name: "Avenir-Medium", size: size) ?? UIFont.systemFont(ofSize: size)
        case .roman:
            return UIFont(name: "Avenir-Roman", size: size) ?? UIFont.systemFont(ofSize: size)
        case .heavy:
            return UIFont(name: "Avenir-Heavy", size: size) ?? UIFont.systemFont(ofSize: size)
        default:
            return UIFont.systemFont(ofSize: size)
        }
    }
}
