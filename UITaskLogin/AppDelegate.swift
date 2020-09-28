//
//  AppDelegate.swift
//  UITaskLogin
//
//  Created by Umer Farooq on 28/09/2020.
//  Copyright © 2020 Umer Farooq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let win = UIWindow(frame: UIScreen.main.bounds)
        let vc = LoginViewController(nibName: "LoginViewController", bundle: nil)
        win.rootViewController = vc
        win.makeKeyAndVisible()
        window = win
        return true
        
    }
}

