//
//  UIViewControllerExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension UIViewController {
    
    //Check if ViewController is onscreen and not hidden.
    public var isVisible: Bool {
        return self.isViewLoaded && view.window != nil
    }
}

// MARK: - Methods
public extension UIViewController {
    
    //Assign as listener to notification.
    public func addNotificationObserver(name: Notification.Name, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: name, object: nil)
    }
    
    //Unassign as listener to notification.
    public func removeNotificationObserver(name: Notification.Name) {
        NotificationCenter.default.removeObserver(self, name: name, object: nil)
    }
    
    //Unassign as listener from all notifications.
    public func removeNotificationsObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
}
