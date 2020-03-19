//
//  Color.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

struct Color: RawRepresentable {
    private(set) var rawValue: UIColor
}

// MARK: - Constants

extension Color {
    static let white = Color(rawValue: .white)
    static let black = Color(rawValue: .black)
    static let clear = Color(rawValue: .clear)
    static let gray = Color(rawValue: UIColor(p3Red: 60, green: 63, blue: 67))
    static let darkGray = Color(rawValue: UIColor(p3Red: 41, green: 44, blue: 48))
    static let primary = Color(rawValue: UIColor(p3Red: 2, green: 2, blue: 2))
    static let secondary = Color(rawValue: UIColor(p3Red: 217, green: 55, blue: 49))
}
