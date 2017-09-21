//
//  UINavigationControllerExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


public extension UINavigationController  {
    
    //Pop ViewController with completion handler.
    public func popViewController(_ completion: (()->Void)? = nil) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        popViewController(animated: true)
        CATransaction.commit()
    }
    
    //Push ViewController with completion handler.
    public func pushViewController(_ viewController: UIViewController, completion: (()->Void)? = nil)  {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: true)
        CATransaction.commit()
    }
    
    //Make navigation controller's navigation bar transparent.
    public func makeTransparent(withTint tint: UIColor = .white) {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true //set height 64
        navigationBar.tintColor = tint
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: tint]
    }
}
