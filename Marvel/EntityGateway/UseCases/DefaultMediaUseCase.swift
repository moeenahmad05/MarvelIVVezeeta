//
//  DefaultMediaUseCase.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

final class DefaultMediaUseCase<Repository: RepositoryProtocol> where Repository.Entity == Media {
    private let gateway: MarvelMediaGateway
    private let repository: Repository
    
    init(gateway: MarvelMediaGateway, repository: Repository) {
        self.gateway = gateway
        self.repository = repository
    }
}

// MARK: - MediaUseCase

extension DefaultMediaUseCase: MediaUseCase {
    func loadMediaItems(with parameter: MediaParameter) -> Promise<MediaPaginator> {
        return gateway
            .loadMediaItems(with: parameter)
            .then { self.repository.save(entites: $0.results) }
            .recover { _ in self.repository.fetchAll().then { MediaPaginator(results: $0) } }
    }
}
