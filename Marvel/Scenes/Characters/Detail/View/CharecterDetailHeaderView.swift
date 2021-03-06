//
//  CharecterDetailHeaderView.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class CharecterDetailHeaderView: UIView {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var characterImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    // MARK: - LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }

}

// MARK: - Configurations

extension CharecterDetailHeaderView {
    func configure(with item: CharacterViewItem) {
        characterImageView.download(image: item.imageURL)
        nameLabel.text = item.name
        descriptionLabel.text = item.description
    }
}
