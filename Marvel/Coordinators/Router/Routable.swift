//
//  Routable.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

protocol Routable {
    var navigationController: UINavigationController { get }
    var rootViewController: UIViewController? { get }
    
    func present(_ module: Showable, animated: Bool)
    func push(_ module: Showable, animated: Bool, completion: (() -> Void)?)
    func pop(animated: Bool)
}
