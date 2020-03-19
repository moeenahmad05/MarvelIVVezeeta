//
//  RealmMedia.swift
//  Marvel
//
//  Created by Moeen Ahmad on 9/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation
import RealmSwift

final class RealmMedia: Object {
    @objc dynamic var id = 0
    @objc dynamic var title: String?
    @objc dynamic var thumbnail: RealmImage?
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

// MARK: - RealmRepresentable

extension Media: RealmRepresentable {
    func asRealm() -> RealmMedia {
        return RealmMedia.build {
            $0.id = id
            $0.title = title
            $0.thumbnail = thumbnail?.asRealm()
        }
    }
}

// MARK: - CoreConvertible

extension RealmMedia: CoreConvertible {
    func asCore() -> Media {
        return Media(
            id: id,
            title: title,
            thumbnail: thumbnail?.asCore()
        )
    }
}
