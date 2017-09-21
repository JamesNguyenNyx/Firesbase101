//
//  MainViewController.swift
//  Template
//
//  Created by James Nguyen on 2017/09/20.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class MainViewController: BaseViewController {
    
    @IBOutlet weak var signOutButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main Controller"
    }
}

//MARK: Action for ViewController
extension MainViewController {
    
    @IBAction func signOutAction(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            dismiss(animated: true, completion: nil)
        } catch let signOutError as NSError {
            print ("Error signing out: \(signOutError.localizedDescription)")
        }
    }
}
