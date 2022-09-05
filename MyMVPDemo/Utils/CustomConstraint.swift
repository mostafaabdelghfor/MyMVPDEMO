//
//  CustomConstraint.swift
//  KiddowzNursery
//
//  Created by Mohamed Elmaazy on 4/7/20.
//  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
//

import Foundation
import UIKit

class CustomConstraint: NSLayoutConstraint {
    
    override func awakeFromNib() {
        constant = GET_RATIO(constant)
    }
}
