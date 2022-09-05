//
//  UICollectionViewCellExtension.swift
//  Edara
//
//  Created by Mohamed Elmaazy on 7/24/19.
//  Copyright © 2019 Internet Plus. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    
    func updateConstraint(constraint: NSLayoutConstraint, value: CGFloat) {
        constraint.constant = value * UIScreen.main.bounds.width / 360
        print("New constraint for: \(value) is: \(constraint.constant)")
    }
    
    func getRatio(_ number: CGFloat) -> CGFloat {
        let ratio = CGFloat(Int(number * UIScreen.main.bounds.width / 360))
        return ratio > 0 ? ratio : CGFloat(number * UIScreen.main.bounds.width / 360)
    }
}
