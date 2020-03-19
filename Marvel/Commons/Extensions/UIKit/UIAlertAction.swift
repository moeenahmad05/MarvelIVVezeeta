//
//  UIAlertAction.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

extension UIAlertAction {
    convenience init(title: String, handler: @escaping (() -> Void)) {
        self.init(title: title, style: .default) { _ in
            handler()
        }
    }
}
