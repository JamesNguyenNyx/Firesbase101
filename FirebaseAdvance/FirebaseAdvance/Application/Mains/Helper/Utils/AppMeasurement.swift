//
//  AppMeasurement.swift
//  FirebaseAdvance
//
//  Created by James Nguyen on 2017/09/21.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import Firebase

class AppMeasurement: NSObject {
    
    static func sendLoginEvent() {
        print("LOG WHEN REGISTER")
        Analytics.logEvent(AnalyticsEventLogin, parameters: nil)
    }
    
    static func sendLogoutEvent() {
        Analytics.logEvent("logout", parameters: nil)
    }
    
    static func sendMessageEvent() {
        Analytics.logEvent("message", parameters: nil)
    }
}
