//
//  ObjectBuilder.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation
import RealmSwift

extension Object {
    static func build<Entity: Object>(_ builder: (Entity) -> Void) -> Entity {
        let entity = Entity()
        builder(entity)
        return entity
    }
}
