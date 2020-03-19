//
//  MarvelError.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

struct MarvelError {
    private(set) var message: String
    
    init(_ message: String) {
        self.message = message
    }
}

// MARK: - LocalizedError

extension MarvelError: LocalizedError {
    var localizedDescription: String {
        return message
    }
}

// MARK: - Constants

extension MarvelError {
    static let general = MarvelError("Something went wrong.\n Please try again later")
    static let decode = MarvelError("Failed to decode response.")
}
