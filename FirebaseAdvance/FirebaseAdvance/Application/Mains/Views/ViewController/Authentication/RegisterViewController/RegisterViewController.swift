//
//  RegisterViewController.swift
//  FirebaseAdvance
//
//  Created by James Nguyen on 2017/09/21.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

@objc(RegisterViewController)
class RegisterViewController: BaseViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var signInButton: GIDSignInButton?
    var handle: AuthStateDidChangeListenerHandle?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        handle = Auth.auth().addStateDidChangeListener() { (auth, user) in
            if user != nil {
                AppMeasurement.sendLoginEvent()
                let mainVC = MainViewController(nibName: MainViewController.className, bundle: nil)
                self.present(mainVC, animated: true, completion: nil)
            }
        }
    }
    
    deinit {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}

