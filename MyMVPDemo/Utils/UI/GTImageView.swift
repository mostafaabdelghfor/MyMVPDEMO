//
//  GTImageView.swift
//  Youmeda
//
//  Created by m3azy on 03/02/2021.
//

import Foundation
import UIKit

class GTImageView: UIImageView {
    
    override func awakeFromNib() {
        self.image = self.image?.imageFlippedForRightToLeftLayoutDirection()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
