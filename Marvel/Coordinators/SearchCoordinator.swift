//
//  SearchCoordinator.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class SearchCoordinator {
    
    // MARK: - Properties

    private let router: Router
    private let viewModel: CharactersViewModel
    
    // MARK: - Init / Deinit
    
    init(router: Router, viewModel: CharactersViewModel) {
        self.router = router
        self.viewModel = viewModel
    }
}

// MARK: - Coordinator

extension SearchCoordinator: Coordinator {
    func start() {
        let controller = SearchViewController.instantiate()
        controller.viewModel = viewModel
        router.push(controller, animated: true, completion: nil)
    }
}
