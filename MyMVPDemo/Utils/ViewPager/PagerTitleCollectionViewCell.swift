//
//  PagerTitleCollectionViewCell.swift
//  KiddowzNursery
//
//  Created by Mohamed Elmaazy on 3/23/20.
//  Copyright © 2020 Mohamed Hossam Khedr. All rights reserved.
//

import UIKit

class PagerTitleModel {
    var name = ""
    var titleDefaultColor: UIColor = .black
    var defaultBackgroundColor: UIColor = .clear
    var selectedBackgrounColor: UIColor = .clear
    var defaultFont: UIFont = UIFont()
    var selectedFont: UIFont = UIFont()
    var titleSelectedColor: UIColor = .white
    var defaultIndicatorColor: UIColor = .clear
    var selectedIndicatorColor: UIColor = .black
    var indicatorHeight: CGFloat = 2
    var width: CGFloat = 100
}

class PagerTitleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var viewIndicator: UIView!
    @IBOutlet weak var constraintHeightIndicator: NSLayoutConstraint!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        viewBackground.layer.cornerRadius = 8
    }
    
    func setData(_ model: PagerTitleModel, selected: Bool) {
        labelTitle.text = model.name
        if selected {
            viewBackground.backgroundColor =  model.selectedBackgrounColor
            labelTitle.textColor = model.titleSelectedColor
            viewIndicator.backgroundColor = model.selectedIndicatorColor
            labelTitle.font = model.selectedFont
        } else {
            viewBackground.backgroundColor = model.defaultBackgroundColor
            labelTitle.textColor = model.titleDefaultColor
            viewIndicator.backgroundColor = model.defaultIndicatorColor
            labelTitle.font = model.defaultFont
        }
        constraintHeightIndicator.constant =  model.indicatorHeight
    }

}
