//
//  UILabelExtension.swift
//  Safir El3rood
//
//  Created by mohamed elmaazy on 7/26/18.
//  Copyright © 2018 Internet Plus. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func stringFromHtml(htmlString: String) {
        let htmlData = NSString(string: htmlString).data(using: String.Encoding.unicode.rawValue)
        let options = [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html]
        let attributedString = try! NSAttributedString(data: htmlData!, options: options, documentAttributes: nil)
        self.attributedText = attributedString
    }
    
    func getNumberFormat() {
        var someString = self.text
        if someString == "" {
            someString = "0"
        }
        let myInteger = Double(someString!)
        let myNumber = NSNumber(value:myInteger!)
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        let formattedNumber = numberFormatter.string(from:myNumber)
        self.text = formattedNumber!
    }
    
    func getDateFromTimstampFormat() {
        let date = Date(timeIntervalSince1970: Double(self.text!)!)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.current
        //        if AppLanguageHandler.instance.getLanguage() == AppConstant.instance.ARABIC {
        //            dateFormatter.dateFormat = "yyy-MM-dd"
        //        }else {
        dateFormatter.dateFormat = "dd-MM-yyyy"
        //        }
        let strDate = dateFormatter.string(from: date)
        self.text = strDate
    }
    
    func setFont(name: String, size: CGFloat) {
        self.font = UIFont(name: name.localize, size: size)!
    }
    
    func setStrikethrough(text: String) {
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: text)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        
        self.attributedText = attributeString
    }
    
    func diagonalStrikeThrough(offsetPercent: CGFloat = 0.1) {
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: 0, y: bounds.height))
        linePath.addLine(to: CGPoint(x: bounds.width, y: bounds.height * offsetPercent))
        
        let lineLayer = CAShapeLayer()
        lineLayer.path = linePath.cgPath
        lineLayer.lineWidth = 1
        lineLayer.strokeColor = textColor.cgColor
        layer.addSublayer(lineLayer)
    }
    
    func changeSpecificColorText(sub1: String, sub2: String, sub3: String = "", color1: UIColor, color2: UIColor, color3: UIColor = .black) {
        let main = sub1 + " " + sub2 + " " + sub3
        let range1 = (main as NSString).range(of: sub1)
        let range2 = (main as NSString).range(of: sub2)
        let range3 = (main as NSString).range(of: sub3)
        let attribute = NSMutableAttributedString.init(string: main)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color1, range: range1)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color2, range: range2)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color3, range: range3)
        self.attributedText = attribute
    }
    
    func setSpecificFontText(sub1: String, sub2: String, font1: UIFont, font2: UIFont) {
        let main = sub1 + " " + sub2
        let range1 = (main as NSString).range(of: sub1)
        let range2 = (main as NSString).range(of: sub2)
        let attribute = NSMutableAttributedString.init(string: main)
        attribute.addAttribute(NSAttributedString.Key.font, value: font1, range: range1)
        attribute.addAttribute(NSAttributedString.Key.font, value: font2, range: range2)
        self.attributedText = attribute
    }
    
    func setSpecificAttributes(texts: [String], fonts: [UIFont]?, colors: [UIColor]?) {
        var main = ""
        var ranges = [NSRange]()
        for sub in texts {
            main += sub
            ranges.append((main as NSString).range(of: sub))
        }
        let attribute = NSMutableAttributedString.init(string: main)
        
        if fonts != nil {
            for (i, font) in fonts!.enumerated() {
                attribute.addAttribute(NSAttributedString.Key.font, value: font, range: ranges[i])
            }
        }
        
        if colors != nil {
            for (i, color) in colors!.enumerated() {
                attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: ranges[i])
            }
        }
        self.attributedText = attribute
    }
    
    func colorString(texts: [String], colors: [UIColor]) {
        var ranges = [NSRange]()
        for sub in texts {
            ranges.append((self.text! as NSString).range(of: sub))
        }
        let attribute = NSMutableAttributedString.init(string: self.text!)
        for (i, color) in colors.enumerated() {
            attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: ranges[i])
        }
        self.attributedText = attribute
    }
    
    func setLineHeight(lineHeight: CGFloat) {
        let text = self.text
        if let text = text {
            let attributeString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()
            
            style.lineHeightMultiple = lineHeight
            attributeString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, text.count))
            self.attributedText = attributeString
            self.textAlignment = .right
        }
    }
    
    func setUnderLine() {
        guard let text = self.text else { return }
        let textRange = NSMakeRange(0, text.count)
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
        // Add other attributes if needed
        self.attributedText = attributedText
    }
    
 func determineTextDirection () {
        guard self.text != nil else {return}

        let tagger = NSLinguisticTagger(tagSchemes: [.language], options: 0)
        tagger.string = self.text

        let lang = tagger.dominantLanguage

        let rtl = lang == "he" || lang == "ar"

        self.textAlignment = rtl ? .right : .left
    }
    
    func setTextColorToGradient(image: UIImage) {
        UIGraphicsBeginImageContext(frame.size)
        image.draw(in: bounds)
        let myGradient = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.textColor = UIColor(patternImage: myGradient!)
    }
}
