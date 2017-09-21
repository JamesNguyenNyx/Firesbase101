//
//  BaseTableViewCell.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        updateLayoutConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        updateLayoutConstraints()
    }

    //Layout Constraints
    fileprivate func updateLayoutConstraints() {
        if translatesAutoresizingMaskIntoConstraints == false {
            for constraint in constraints {
                if (constraint.isKind(of: BaseLayoutConstraint.self)) {
                    constraint.constant = constraint.constant * ScreenRatio
                }
            }
        }
        updateLayoutConstraintsOfSubViews(ofView: self)
    }
    
    //Constraints Of SubViews
    fileprivate func updateLayoutConstraintsOfSubViews(ofView view: UIView) {
        for subview in view.subviews {
            for constraint in subview.constraints {
                if (constraint.isKind(of: BaseLayoutConstraint.self)) {
                    constraint.constant = constraint.constant * ScreenRatio
                }
            }
            updateLayoutConstraintsOfSubViews(ofView: subview)
        }
    }

}
