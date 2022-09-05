//
//  NSLayoutConstraintExtensions.swift
//  KiddowzNursery
//
//  Created by Mohamed Elmaazy on 3/2/20.
//  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutConstraint {
    
    func update(_ value: CGFloat) {
        self.constant = value * UIScreen.main.bounds.width / 360
    }
}
