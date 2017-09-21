//
//  AppDelegate.swift
//  FirebaseAdvance
//
//  Created by James Nguyen on 2017/09/21.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.checkLogIn()
        FirebaseApp.configure()
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        return true
    }
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
            return self.application(application, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: "")
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        return GIDSignIn.sharedInstance().handle(url, sourceApplication: sourceApplication, annotation: annotation)
    }

}


//MARK: PrivateFile Extension
extension AppDelegate {
    func checkLogIn() {
        if isLogined() {
            configureRootViewController()
        } else {
            setRootAuthenticationViewController()
        }
    }
    
    func configureRootViewController() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let window = self.window {
            let mainVC = MainViewController(nibName: MainViewController.className, bundle: nil)
            let navigation = BaseNavigationController(rootViewController: mainVC)
            window.rootViewController = navigation
            window.makeKeyAndVisible()
        }
    }
    
    public func setRootAuthenticationViewController() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        if let window = self.window {
            let introVC = RegisterViewController(nibName: RegisterViewController.className, bundle: nil)
            let navigation = BaseNavigationController(rootViewController: introVC)
            window.rootViewController = navigation
            window.makeKeyAndVisible()
        }
    }
    
    func isLogined() -> Bool {
        return false
    }
}

//MARK: GIDSignInDelegate
extension AppDelegate: GIDSignInDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        if let error = error {
            print("Error \(error)")
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                print("Error \(error)")
                return
            }
        }
    }

}

