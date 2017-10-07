//
//  PhoneSearchNavigator.swift
//  TMDbCore
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 7/10/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import UIKit

final class PhoneSearchNavigator : SearchNavigator {
    private unowned let viewControllerProvider : SearchResultsControllerProvider
    private var searchController : UISearchController!
    
    init(viewControllerProvider : SearchResultsControllerProvider) {
        self.viewControllerProvider = viewControllerProvider
    }
    
    func installSearch(viewController: UIViewController) {
        let resultsViewController = viewControllerProvider.searchResultsViewController()
        searchController = UISearchController(searchResultsController: resultsViewController)
        
        
        searchController.searchResultsUpdater = resultsViewController
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = NSLocalizedString("Search", comment: "")
        searchController.searchBar.searchBarStyle = .minimal
        
        viewController.navigationItem.titleView = searchController.searchBar
        viewController.definesPresentationContext = true
    }
}
