//
//  CharactersCell.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

 class CharactersCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet private weak var characterImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        characterImageView.image = nil
    }
}

// MARK: - CellConfigurable

extension CharactersCell: CellConfigurable {
    func configure(with item: CharacterViewItem) {
        characterImageView.download(image: item.imageURL)
        nameLabel.text = item.name
    }
}
