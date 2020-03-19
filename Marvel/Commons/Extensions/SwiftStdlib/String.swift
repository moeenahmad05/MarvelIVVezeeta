//
//  String.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

extension String {

    var isBlank: Bool {
        let trimmed = trimmingCharacters(in: .whitespaces)
        return trimmed.isEmpty
    }
    
    var nilIfEmpty: String? {
        return isBlank ? nil : self
    }
}
