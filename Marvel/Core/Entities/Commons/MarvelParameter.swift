//
//  MarvelParameter.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation
import CryptoSwift

struct VoidParameter: Encodable { }

struct MarvelParameter<Value: Encodable> {
    
    private let timestamp: String
    private let hash: String
    private let apiKey: String
    private let parameter: Value?
    
    //Marvel public key & private Key
    
    init(
        _ parameter: Value? = nil,
        publicKey: String = "b72bf358e4c1c957bb7dbb209576ec7a",
        privateKey: String = "d1cbd239c1af2958b84bd18f9e8c0cee1b82629f"
    ) {
        self.timestamp = "\(Date().timeIntervalSince1970)"
        self.hash = "\(timestamp)\(privateKey)\(publicKey)".md5()
        self.apiKey = publicKey
        self.parameter = parameter
    }
}

// MARK: - Encodable

extension MarvelParameter: Encodable {
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(hash, forKey: .hash)
        try container.encode(apiKey, forKey: .apiKey)
        try parameter?.encode(to: encoder)
    }
    
    enum CodingKeys: String, CodingKey {
        case timestamp = "ts"
        case apiKey = "apikey"
        case hash
        case parameter
    }
}
