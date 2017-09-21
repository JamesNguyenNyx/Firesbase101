//
//  AppDefine.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

enum DeviceScreenType: String {
    case iPhone5, iPhone7, iPhone7Plus, iPhoneX
}

let ScreenSize = UIScreen.main.bounds.size
let ScreenWidth = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height
let ScreenRatio: CGFloat = min(ScreenWidth, ScreenHeight)/375.0
