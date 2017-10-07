@testable import TMDbCore

import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let disposeBag = DisposeBag()
let assembly = CoreAssembly(navigationcontroller: UINavigationController())
let webService = assembly.webServiceAssembly.webService

// Load configuration
/*
webService.load(Configuration.self, from: .configuration)
	.subscribe(onNext: { print($0.images.baseURL) })
	.disposed(by: disposeBag)

 
 */

webService.load(Page<Show>.self, from: .moviesOnTheAir(page: 1))
    .subscribe(onNext: { print($0)}, onError: {
        print($0)
    })
    .disposed(by: disposeBag)
