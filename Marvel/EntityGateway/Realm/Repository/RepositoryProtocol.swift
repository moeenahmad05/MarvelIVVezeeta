//
//  RepositoryProtocol.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

protocol RepositoryProtocol {
    associatedtype Entity
    
    @discardableResult
    func save(entites: [Entity]) -> Promise<Void>
    func fetchAll() -> Promise<[Entity]>
}
