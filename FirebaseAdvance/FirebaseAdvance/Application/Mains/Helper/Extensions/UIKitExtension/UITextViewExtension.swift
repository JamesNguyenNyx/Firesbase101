//
//  UITextViewExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


public extension UITextView {
    
    //Clear text.
    public func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
    //Scroll to the bottom of text view
    public func scrollToBottom() {
        let range = NSMakeRange((text as NSString).length - 1, 1)
        scrollRangeToVisible(range)
    }
    
    //Scroll to the top of text view
    public func scrollToTop() {
        let range = NSMakeRange(0, 1)
        scrollRangeToVisible(range)
    }

}
