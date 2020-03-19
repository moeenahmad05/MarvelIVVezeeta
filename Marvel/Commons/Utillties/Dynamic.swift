//
//  Dynamic.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

final class Dynamic<Value> {
    
    typealias Listener = (Value) -> Void
    
    private var listener: Listener?
    
    var value: Value {
        didSet { listener?(value) }
    }
    
    init(_ value: Value) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
