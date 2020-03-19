//
//  MarvelCharacter.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct MarvelCharacter: Decodable {
    let id: Int
    let name: String?
    let description: String?
    let thumbnail: Image?
}
