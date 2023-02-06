//
//  AppDelegate.swift
//  GoockTail
//
//  Created by Oussama ABBOUD on 06/02/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    let window = UIWindow()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navController = UINavigationController()
        navController.pushViewController(ViewController(), animated: false)
        window.rootViewController = navController
        window.makeKeyAndVisible()
        return true
    }

}

