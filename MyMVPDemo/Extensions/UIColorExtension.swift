//
//  UIColorExtenstion.swift
//  1Pharmacy
//
//  Created by mohamed elmaazy on 6/21/18.
//  Copyright © 2018 mohamed elmaazy. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func fromHex(hex:String, alpha: CGFloat = 1.0) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    open class var titleColor: UIColor {
        return #colorLiteral(red: 0.007843137255, green: 0.003921568627, blue: 0.5764705882, alpha: 1)
    }
    
}
