//
//  CellConfigurable.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

protocol CellConfigurable {
    associatedtype Item
    func configure(with item: Item)
}
