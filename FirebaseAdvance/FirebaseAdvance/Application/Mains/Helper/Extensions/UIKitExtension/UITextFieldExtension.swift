//
//  UITextFieldExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


//MARK: Enums
public extension UITextField {
    
    public enum TextType {
        case emailAddress
        case password
        case generic
    }
}

//MARK: Properties
public extension UITextField {
    
    //Set textField for common text types.
    public var textType: TextType {
        
        get {
            if keyboardType == .emailAddress {
                return .emailAddress
            } else if isSecureTextEntry {
                return .password
            }
            return .generic
        }
        
        set {
            switch newValue {
            case .emailAddress:
                keyboardType = .emailAddress
                autocorrectionType = .no
                autocapitalizationType = .none
                isSecureTextEntry = false
                placeholder = "Email Address"
                
            case .password:
                keyboardType = .asciiCapable
                autocorrectionType = .no
                autocapitalizationType = .none
                isSecureTextEntry = true
                placeholder = "Password"
                
            case .generic:
                isSecureTextEntry = false
                
            }
        }
    }
    
    //Check if text field is empty.
    public var isEmpty: Bool {
        return text?.isEmpty == true
    }
    
    //Return text with no spaces or new lines in beginning and end.
    public var trimmedText: String? {
        return text?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    //Check if textFields text is a valid email format.
    public var hasValidEmail: Bool {
        return text?.range(of: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}",
                           options: String.CompareOptions.regularExpression,
                           range: nil, locale: nil) != nil
    }
    
    @IBInspectable
    //Left view tint color.
    public var leftViewTintColor: UIColor? {
        get {
            guard let iconView = leftView as? UIImageView else {
                return nil
            }
            return iconView.tintColor
        }
        set {
            guard let iconView = leftView as? UIImageView else {
                return
            }
            iconView.image = iconView.image?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = newValue
        }
    }
    
    @IBInspectable
    //Right view tint color.
    public var rightViewTintColor: UIColor? {
        get {
            guard let iconView = rightView as? UIImageView else {
                return nil
            }
            return iconView.tintColor
        }
        set {
            guard let iconView = rightView as? UIImageView else {
                return
            }
            iconView.image = iconView.image?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = newValue
        }
    }
}


//MARK: Methods
public extension UITextField {
    
    //Clear text.
    public func clear() {
        text = ""
        attributedText = NSAttributedString(string: "")
    }
    
    //Set placeholder text color.
    public func setPlaceHolderTextColor(_ color: UIColor) {
        guard let holder = placeholder, !holder.isEmpty else {
            return
        }
        self.attributedPlaceholder = NSAttributedString(string: holder, attributes: [NSForegroundColorAttributeName: color])
    }
    
    //Add padding to the left of the textfield rect.
    public func addPaddingLeft(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
    }
    
    //Add padding to the left of the textfield rect.
    public func addPaddingLeftIcon(_ image: UIImage, padding: CGFloat) {
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        self.leftView = imageView
        self.leftView?.frame.size = CGSize(width: image.size.width + padding, height: image.size.height)
        self.leftViewMode = UITextFieldViewMode.always
    }
}





































