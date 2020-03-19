//
//  UICollectionView.swift
//  Marvel
//
//  Created by Moeen Ahmad on 10/09/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_ cell: T.Type) {
        let nib = UINib(nibName: T.reuseIdentifier, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(at indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Error dequeuing cell for identifier \(T.reuseIdentifier)")
        }
        return cell
    }
    
}
