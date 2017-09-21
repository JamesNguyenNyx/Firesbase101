//
//  UIButtonExtension.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


//MARK: Properties
public extension UIButton {
    
    @IBInspectable
    //Image of disabled state for button
    public var imageForDisabled: UIImage? {
        get {
            return image(for: .disabled)
        }
        set {
            setImage(newValue, for: .disabled)
        }
    }
    
    @IBInspectable
    //Image of highlighted state for button
    public var imageForHighlighted: UIImage? {
        get {
            return image(for: .highlighted)
        }
        set {
            setImage(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    //Image of normal state for button
    public var imageForNormal: UIImage? {
        get {
            return image(for: .normal)
        }
        set {
            setImage(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    //Image of selected state for button
    public var imageForSelected: UIImage? {
        get {
            return image(for: .selected)
        }
        set {
            setImage(newValue, for: .selected)
        }
    }
    
    @IBInspectable
    //Title color of disabled state for button
    public var titleColorForDisabled: UIColor? {
        get {
            return titleColor(for: .disabled)
        }
        set {
            setTitleColor(newValue, for: .disabled)
        }
    }
    
    @IBInspectable
    //Title color of highlighted state for button
    public var titleColorForHighlighted: UIColor? {
        get {
            return titleColor(for: .highlighted)
        }
        set {
            setTitleColor(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    //Title color of normal state for button
    public var titleColorForNormal: UIColor? {
        get {
            return titleColor(for: .normal)
        }
        set {
            setTitleColor(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    //Title color of selected state for button
    public var titleColorForSelected: UIColor? {
        get {
            return titleColor(for: .selected)
        }
        set {
            setTitleColor(newValue, for: .selected)
        }
    }
    
    @IBInspectable
    //Title of disabled state for button
    public var titleForDisabled: String? {
        get {
            return title(for: .disabled)
        }
        set {
            setTitle(newValue, for: .disabled)
        }
    }
    
    @IBInspectable
    //Title of highlighted state for button
    public var titleForHighlighted: String? {
        get {
            return title(for: .highlighted)
        }
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable
    //Title of normal state for button
    public var titleForNormal: String? {
        get {
            return title(for: .normal)
        }
        set {
            setTitle(newValue, for: .normal)
        }
    }
    
    @IBInspectable
    ///Title of selected state for button
    public var titleForSelected: String? {
        get {
            return title(for: .selected)
        }
        set {
            setTitle(newValue, for: .selected)
        }
    }
}

// MARK: - Methods
public extension UIButton {
    
    private var states: [UIControlState] {
        return [.normal, .selected, .highlighted, .disabled]
    }
    
    //Set image for all states.
    public func setImageForAllStates(_ image: UIImage) {
        states.forEach { self.setImage(image, for:  $0) }
    }
    
    //Set title color for all states.
    public func setTitleColorForAllStates(_ color: UIColor) {
        states.forEach { self.setTitleColor(color, for: $0) }
    }
    
    //Set title for all states.
    public func setTitleForAllStates(_ title: String) {
        states.forEach { self.setTitle(title, for: $0) }
    }
    
}
