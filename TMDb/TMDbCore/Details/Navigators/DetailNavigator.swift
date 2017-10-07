//
//  DetailNavigator.swift
//  TMDbCore
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 7/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

protocol DetailNavigator {
    
    func shoDetail(withIdentifier identifier: Int64, mediaType: MediaType)
}


