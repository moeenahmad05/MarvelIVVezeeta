//
//  UIBarButtonItem.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(title: String = "") {
        self.init()
        self.title = title
    }
}
