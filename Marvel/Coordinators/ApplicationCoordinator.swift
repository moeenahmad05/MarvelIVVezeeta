//
//  ApplicationCoordinator.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class ApplicationCoordinator {
    
    // MARK: - Properties
    
    let window: UIWindow
    lazy var characterGateway = CharacterGateway()
    lazy var characterRepository = RealmRepository<MarvelCharacter>()
    lazy var characterUseCase = DefaultCharacterUseCase(gateway: characterGateway, repository: characterRepository)
    lazy var rootViewController = UINavigationController()
    lazy var router = Router(navigationController: rootViewController)
    lazy var charactersCoordinator = CharactersCoordinator(router: router, characterUseCase: characterUseCase)
    
    // MARK: - Init / Deinit
    
    init(window: UIWindow) {
        self.window = window
    }
}

// MARK: - Coordinator

extension ApplicationCoordinator: Coordinator {
    func start() {
        window.rootViewController = router.toPresentable()
        charactersCoordinator.start()
        window.makeKeyAndVisible()
    }
}
