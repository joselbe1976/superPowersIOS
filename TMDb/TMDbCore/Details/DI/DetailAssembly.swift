//
//  DetailAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 30/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final class DetailAssembly {
	private let imageLoadingAssembly: ImageLoadingAssembly
    private let navigationController : UINavigationController

    init(imageLoadingAssembly: ImageLoadingAssembly, navigationcontroller: UINavigationController) {
		self.imageLoadingAssembly = imageLoadingAssembly
        self.navigationController = navigationcontroller
	}

	func detailHeaderPresenter() -> DetailHeaderPresenter {
		return DetailHeaderPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}

	func posterStripPresenter() -> PosterStripPresenter {
		return PosterStripPresenter(imageRepository: imageLoadingAssembly.imageRepository)
	}
    
    func DetailNavigator() -> DetailNavigator {
        return PhoneDetailNavigator(navigationController: self.navigationController, viewControllerProvider: self)
    }
}


extension DetailAssembly : DetailViewControllerProvider{
    //FIXME: Temporal!!!
    
    private class DummyDetailPresenter : DetailPresenter{
        var view: DetailView?
        
        func didLoad() {
        }
        
        func didSelect(item: PosterStripItem) {
        }
        
        
    }
    
    
    
    func detailViewController(identifier: Int64, mediaType: MediaType) -> UIViewController {
        
        return  DetailViewController(presenter: DummyDetailPresenter(), headerPresenter: detailHeaderPresenter(), posterStripPresenter: posterStripPresenter())
    }
    
    
    
}
