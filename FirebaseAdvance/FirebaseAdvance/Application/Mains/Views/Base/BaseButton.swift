//
//  BaseButton.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class BaseButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        configureScreenScales()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureScreenScales()
    }
    
    fileprivate func configureScreenScales() {
        if let titleLabel = self.titleLabel {
            self.titleLabel?.font = AppFont.appFontWithStyle(.book, titleLabel.font.pointSize * ScreenRatio)
        }
    }
}
