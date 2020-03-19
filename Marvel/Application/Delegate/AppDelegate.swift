//
//  AppDelegate.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: PluggableApplicationDelegate {
    
    override func services() -> [ApplicationService] {
        return [
            ApplicationCoordinatorService(with: window),
            ThemeApplicationService()
        ]
    }
}
