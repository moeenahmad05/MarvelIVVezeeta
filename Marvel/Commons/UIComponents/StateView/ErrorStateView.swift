//
//  ParallelogramView.swift
//  Marvel
//
//  Created by Moeen Ahmad on 6/3/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

final class ErrorStateView: UIView {
    
    // MARK: - Outlets
    
    @IBOutlet private weak var errorLabel: UILabel!
}

// MARK: - Presentation

extension ErrorStateView {
    func display(message: String) {
        errorLabel.text = message
    }
}
