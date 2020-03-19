//
//  UIImageView.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    func download(image url: URL?, placeholder: ImageAsset? = nil) {
        guard let url = url else { return }
        kf.indicatorType = .activity
        kf.setImage(with: url, placeholder: placeholder?.image)
    }
}
