//
//  MediaType.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

enum MediaType: String, CaseIterable {
    case comics
    case series
    case stories
    case events
    
    var title: String {
        return rawValue.capitalized
    }
}
