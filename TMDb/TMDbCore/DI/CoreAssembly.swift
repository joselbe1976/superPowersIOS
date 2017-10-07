//
//  CoreAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 22/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final public class CoreAssembly {
    
    private let navigationcontroller: UINavigationController
    
    private(set) lazy var detailAssembly = DetailAssembly(imageLoadingAssembly: imageLoadingAssembly, navigationcontroller: navigationcontroller)
    public private(set) lazy var featuredAssembly = FeaturedAssembly(imageLoadingAssembly: imageLoadingAssembly, detailAssembly: detailAssembly, searchAsembly: searchAssembly)
    private(set) lazy var searchAssembly = SearchAssembly(imageLoadingAssembly: imageLoadingAssembly, detailAssembly: detailAssembly)
	private(set) lazy var imageLoadingAssembly = ImageLoadingAssembly(webServiceAssembly: webServiceAssembly)
	private(set) lazy var webServiceAssembly = WebServiceAssembly()

    public init(navigationcontroller : UINavigationController) {
        self.navigationcontroller = navigationcontroller
    }
}
