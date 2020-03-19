//
//  Image.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct Image: Decodable {
    
    let url: URL?
    
    init(_ url: URL?) {
        self.url = url
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let path = try container.decode(String.self, forKey: .path)
        let fileExtension = try container.decode(String.self, forKey: .fileExtension)
        self.url = URL(string: "\(path).\(fileExtension)")
    }
    
    enum CodingKeys: String, CodingKey {
        case path
        case fileExtension = "extension"
    }
}
