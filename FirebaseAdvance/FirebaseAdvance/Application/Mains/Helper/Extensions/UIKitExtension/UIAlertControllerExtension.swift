//
//  UIAlertControllerExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit
import AudioToolbox

//MARK: Methods
public extension UIAlertController {
    
    //Present alert view controller in the current view controller.
    public func show(animated: Bool = true, vibrate: Bool = false, completion: (() -> Void)? = nil) {
        UIApplication.shared.keyWindow?.rootViewController?.present(self, animated: animated, completion: completion)
        if vibrate {
            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        }
    }
    
    //Add an action to Alert
    @discardableResult public func addAction(title: String, style: UIAlertActionStyle = .default, isEnabled: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        action.isEnabled = isEnabled
        addAction(action)
        return action
    }
    
    //Add a text field to Alert
    public func addTextField(text: String? = nil, placeholder: String? = nil, editingChangedTarget: Any?, editingChangedSelector: Selector?) {
        addTextField { tf in
            tf.text = text
            tf.placeholder = placeholder
            if let target = editingChangedTarget, let selector = editingChangedSelector {
                tf.addTarget(target, action: selector, for: .editingChanged)
            }
        }
    }
}

// MARK: - Initializers
public extension UIAlertController {
    
    //Create new alert view controller with default OK action.
    public convenience init(title: String, message: String? = nil, defaultActionButtonTitle: String = "OK", tintColor: UIColor? = nil) {
        self.init(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: defaultActionButtonTitle, style: .default, handler: nil)
        addAction(defaultAction)
        if let color = tintColor {
            view.tintColor = color
        }
    }
    
    //Create new error alert view controller from Error with default OK action.
    public convenience init(title: String = "Error", error: Error, defaultActionButtonTitle: String = "OK", tintColor: UIColor? = nil) {
        self.init(title: title, message: error.localizedDescription, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: defaultActionButtonTitle, style: .default, handler: nil)
        addAction(defaultAction)
        if let color = tintColor {
            view.tintColor = color
        }
    }
}
