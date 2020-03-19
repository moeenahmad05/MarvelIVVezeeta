//
//  MarvelMediaGateway.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import CoreNetwork

final class MarvelMediaGateway {
    private let apiClient: APIClient
    
    init(apiClient: APIClient = DefaultAPIClient()) {
        self.apiClient = apiClient
    }
}

extension MarvelMediaGateway {
    func loadMediaItems(with parameter: MediaParameter) -> Promise<MediaPaginator> {
        let request = RequestBuilder<[Media]>()
            .path("characters/\(parameter.id)/\(parameter.type.rawValue)")
            .method(.get)
            .urlParameters(MarvelParameter<VoidParameter>())
            .build()
        return apiClient.execute(request)
    }
}
