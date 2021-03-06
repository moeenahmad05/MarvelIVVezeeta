//
//  Showable.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

protocol Showable {
    
    func toShowable() -> UIViewController
    
}

extension UIViewController: Showable {
    public func toShowable() -> UIViewController {
        return self
    }
}
