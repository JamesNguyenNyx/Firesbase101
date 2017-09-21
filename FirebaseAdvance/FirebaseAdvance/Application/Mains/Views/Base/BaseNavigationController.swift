//
//  BaseNavigationController.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.makeTransparent(withTint: .white)
        self.navigationBar.setTitleFont(AppFont.appFontWithStyle(.book , 25))
        
    }

}
