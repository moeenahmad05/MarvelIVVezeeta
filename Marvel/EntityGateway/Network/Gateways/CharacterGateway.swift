//
//  CharacterGateway.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import CoreNetwork

final class CharacterGateway {
    private let apiClient: APIClient
    
    init(apiClient: APIClient = DefaultAPIClient()) {
        self.apiClient = apiClient
    }
}

extension CharacterGateway {
    func loadCharacters(with parameter: CharacterParameter) -> Promise<CharacterPaginator> {
        let request = RequestBuilder<[MarvelCharacter]>()
            .path("characters")
            .method(.get)
            .urlParameters(MarvelParameter(parameter))
            .build()
        return apiClient.execute(request)
    }
}
