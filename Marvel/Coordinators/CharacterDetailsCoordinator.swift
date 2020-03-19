//
//  CharacterDetailsCoordinator.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class CharacterDetailsCoordinator {
    
    // MARK: - Properties
    
    private let router: Router
    private let mediaUseCase: MediaUseCase
    private let character: CharacterViewItem
    
    // MARK: - Init / Deinit
    
    init(
        router: Router,
        mediaUseCase: MediaUseCase,
        character: CharacterViewItem
    ) {
        self.router = router
        self.mediaUseCase = mediaUseCase
        self.character = character
    }
}

// MARK: - Coordinator

extension CharacterDetailsCoordinator: Coordinator {
    func start() {
        let controller = CharacterDetailViewController.instantiate()
        controller.viewModel = CharacterDetailViewModel(mediaUseCase: mediaUseCase, character: character)
        router.push(controller, animated: true, completion: nil)
    }
}
