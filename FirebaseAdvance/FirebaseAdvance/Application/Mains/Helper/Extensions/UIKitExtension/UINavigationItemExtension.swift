//
//  UINavigationItemExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

public extension UINavigationItem {
    
    //Replace title label with an image in navigation item.
    public func replaceTitle(with image: UIImage) {
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.image = image
        titleView = logoImageView
    }
}
