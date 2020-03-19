//
//  CharacterDetailsViewItem.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct CharacterDetailsViewItem {
    let type: MediaType
    var state: State<MediaViewItem>
    
    init(type: MediaType, state: State<MediaViewItem> = .loading) {
        self.type = type
        self.state = state
    }
}
