//
//  MediaUseCase.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

// MARK: - Typealias

typealias MediaPaginator = Paginator<[Media]>

// MARK: - UseCase

protocol MediaUseCase {
    func loadMediaItems(with parameter: MediaParameter) -> Promise<MediaPaginator>
}

// MARK: - Parameters

struct MediaParameter: Encodable {
    private(set) var id: Int
    private(set) var type: MediaType
    
    enum CodingKeys: String, CodingKey {
        case id
    }
}
