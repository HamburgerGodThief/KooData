//
//  UICollectionView+Extension.swift
//  KooData
//
//  Created by Hamburger on 2021/1/15.
//

import UIKit

extension UICollectionView {

    func registerItemWithNib(identifier: String, bundle: Bundle?) {

        let nib = UINib(nibName: identifier, bundle: bundle)

        register(nib, forCellWithReuseIdentifier: identifier)
        
    }
    
}
