//
//  UINavigationBarExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

public extension UINavigationBar {
    
    //Set Navigation Bar title, title color and font.
    public func setTitleFont(_ font: UIFont, color: UIColor = UIColor.white) {
        var attrs = [String: AnyObject]()
        attrs[NSFontAttributeName] = font
        attrs[NSForegroundColorAttributeName] = color
        titleTextAttributes = attrs
    }
    
    //Make navigation bar transparent.
    public func makeTransparent(withTint tint: UIColor = .white) {
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        isTranslucent = true
        tintColor = tint
        titleTextAttributes = [NSForegroundColorAttributeName: tint]
    }
    
    //Set navigationBar background and text colors
    public func setColors(background: UIColor, text: UIColor) {
        isTranslucent = false
        backgroundColor = background
        barTintColor = background
        setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        tintColor = text
        titleTextAttributes = [NSForegroundColorAttributeName: text]
    }
    
}
