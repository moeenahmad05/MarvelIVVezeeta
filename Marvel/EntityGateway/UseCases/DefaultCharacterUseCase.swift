//
//  DefaultCharacterUseCase.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

final class DefaultCharacterUseCase<Repository: RepositoryProtocol> where Repository.Entity == MarvelCharacter {
    private let gateway: CharacterGateway
    private let repository: Repository
    
    init(gateway: CharacterGateway, repository: Repository) {
        self.gateway = gateway
        self.repository = repository
    }
}

// MARK: - CharacterUseCase

extension DefaultCharacterUseCase: CharacterUseCase {
    func loadCharacters(with parameter: CharacterParameter) -> Promise<CharacterPaginator> {
        return gateway
            .loadCharacters(with: parameter)
            .then { self.repository.save(entites: $0.results) }
            .recover { _ in self.repository.fetchAll().then { CharacterPaginator(results: $0) } }
    }
}
