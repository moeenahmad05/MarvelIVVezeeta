//
//  Media.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct Media: Decodable {
    let id: Int
    let title: String?
    let thumbnail: Image?
}
