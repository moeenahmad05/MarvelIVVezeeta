//
//  CharacterViewItem.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

struct CharacterViewItem {
    
    let id: Int
    let imageURL: URL?
    let name: String
    let description: String
    
    init(_ character: MarvelCharacter) {
        self.id = character.id
        self.name = character.name.defaultIfEmpty
        self.description = character.description.defaultIfEmpty
        self.imageURL = character.thumbnail?.url
    }
}
