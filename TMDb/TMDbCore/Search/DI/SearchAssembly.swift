//
//  SearchAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 26/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final class SearchAssembly {
	private let imageLoadingAssembly: ImageLoadingAssembly
    private let detailAssembly : DetailAssembly

	init(imageLoadingAssembly: ImageLoadingAssembly, detailAssembly : DetailAssembly) {
		self.imageLoadingAssembly = imageLoadingAssembly
        self.detailAssembly = detailAssembly
	}
    
    func searchNavigation() -> SearchNavigator{
        return PhoneSearchNavigator(viewControllerProvider: self)
    }
    
	func presenter() -> SearchResultsPresenter {
        return SearchResultsPresenter(detailNavigation: detailAssembly.DetailNavigator())
	}

	func resultPresenter() -> SearchResultPresenter {
		return SearchResultPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}

    
}


extension SearchAssembly : SearchResultsControllerProvider {
    func searchResultsViewController() -> SearchResultsViewController {
        return SearchResultsViewController(presenter: presenter(),
                                           resultPresenter: resultPresenter())
    }
    
    
}
