//
//  FeaturedAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 27/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final public class FeaturedAssembly {
	private let imageLoadingAssembly: ImageLoadingAssembly
    private let detailAssembly : DetailAssembly
    private let searchAsembly : SearchAssembly

	init(imageLoadingAssembly: ImageLoadingAssembly, detailAssembly : DetailAssembly, searchAsembly : SearchAssembly) {
		self.imageLoadingAssembly = imageLoadingAssembly
        self.detailAssembly = detailAssembly
        self.searchAsembly = searchAsembly
	}

	public func viewController() -> UIViewController {
		return FeaturedViewController(presenter: presenter(),
		                              cardPresenter: cardPresenter(), searchNavigator: searchAsembly.searchNavigation())
	}

	func presenter() -> FeaturedPresenter {
		return FeaturedPresenter(detailNavigator: self.detailAssembly.DetailNavigator())
	}

	func cardPresenter() -> CardPresenter {
		return CardPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}
}
