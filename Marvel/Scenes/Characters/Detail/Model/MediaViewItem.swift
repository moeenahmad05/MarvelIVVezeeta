//
//  MediaViewItem.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct MediaViewItem {
    let title: String
    let imageURL: URL?
    
    init(comic: Media) {
        self.title = comic.title.defaultIfEmpty
        self.imageURL = comic.thumbnail?.url
    }
}
