//
//  AppColor.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit


func color(r: Int, g: Int, b: Int, alpha: CGFloat = 1.0) -> UIColor {
    return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
}

struct AppColor {
    
    //Default System
    static let white = UIColor.white
    static let clear = UIColor.clear
    static let black = UIColor.black
    static let gray  = UIColor.gray
    static let lightGray = UIColor.lightGray
    
    //Custom Color
    static let mainGreen = color(r: 72, g: 149, b: 140)

    

}
