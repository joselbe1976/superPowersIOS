//
//  AppDelegate.swift
//  TMDb
//
//  Created by Guille Gonzalez on 21/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let  appAsenbly = AppAssembly()


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        appAsenbly.window.rootViewController = appAsenbly.navcontroller
        
        let vc = appAsenbly.coreAssembly.featuredAssembly.viewController()
         appAsenbly.navcontroller.pushViewController(vc, animated: true)
        
        
        appAsenbly.window.makeKeyAndVisible()
		return true
	}

	
}

