//
//  PhoneDetailNavigator.swift
//  TMDbCore
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 7/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import UIKit



final class PhoneDetailNavigator : DetailNavigator {
    private let navigationController : UINavigationController
    private unowned let viewControllerProvider : DetailViewControllerProvider  //lo mismo que una refeencvia debil. Sino seria poner weak var .... ? y opcional.
    
    //constructor
    init (navigationController : UINavigationController, viewControllerProvider : DetailViewControllerProvider){
        self.navigationController = navigationController
        self.viewControllerProvider = viewControllerProvider
    }
    
    
    func shoDetail(withIdentifier identifier: Int64, mediaType: MediaType) {
        
        //creamos el view controller
        let vc = self.viewControllerProvider.detailViewController(identifier: identifier, mediaType: mediaType)
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    
}
