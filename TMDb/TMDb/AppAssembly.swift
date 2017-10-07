//
//  AppAssembly.swift
//  TMDb
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 6/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import UIKit
import TMDbCore

final class AppAssembly {
    
    private(set) lazy var window = UIWindow(frame: UIScreen.main.bounds)
    private(set) lazy var navcontroller = UINavigationController()
    private(set) lazy var coreAssembly = CoreAssembly(navigationcontroller: navcontroller)
    
    
}
