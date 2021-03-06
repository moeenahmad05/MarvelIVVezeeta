//
//  Throttler.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import Foundation

final class Throttler {
    
    private var workItem: DispatchWorkItem = DispatchWorkItem { }
    private var previousRun: Date = Date.distantPast
    private let queue: DispatchQueue
    private let minimumDelay: TimeInterval
    
    init(minimumDelay: TimeInterval, queue: DispatchQueue = DispatchQueue.main) {
        self.minimumDelay = minimumDelay
        self.queue = queue
    }
    
    func throttle(_ block: @escaping () -> Void) {
        workItem.cancel()
        
        workItem = DispatchWorkItem { [weak self] in
            self?.previousRun = Date()
            block()
        }
        let delay = previousRun.timeIntervalSinceNow > minimumDelay ? 0 : minimumDelay
        queue.asyncAfter(deadline: .now() + Double(delay), execute: workItem)
    }
}
