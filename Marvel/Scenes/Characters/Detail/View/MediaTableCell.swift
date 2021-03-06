//
//  MediaTableCell.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class MediaTableCell: UITableViewCell {
    
    // MARK: - Outlets

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView! {
        didSet { collectionView.register(MediaCollectionCell.self) }
    }
    
    // MARK: - Properties

    private lazy var dataSource = CollectionDataSource<MediaCollectionCell>(collectionView)
}

// MARK: - CellConfigurable

extension MediaTableCell: CellConfigurable {
    func configure(with item: CharacterDetailsViewItem) {
        titleLabel.text = item.type.title
        dataSource.state = item.state
    }
}
