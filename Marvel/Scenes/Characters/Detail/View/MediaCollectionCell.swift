//
//  MediaCollectionCell.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class MediaCollectionCell: UICollectionViewCell {

    // MARK: - Outlets
    
    @IBOutlet private weak var comicImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
}

// MARK: - CellConfigurable

extension MediaCollectionCell: CellConfigurable {
    func configure(with item: MediaViewItem) {
        nameLabel.text = item.title
        comicImageView.download(image: item.imageURL)
    }
}
