//
//  PagerBodyCollectionViewCell.swift
//  KiddowzNursery
//
//  Created by Mohamed Elmaazy on 3/23/20.
//  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
//

import UIKit

class PagerBodyCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setData(_ viewController: UIViewController) {
        self.addSubview(viewController.view)
    }

}
