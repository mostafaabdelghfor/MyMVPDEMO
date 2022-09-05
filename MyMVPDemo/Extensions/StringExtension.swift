//
//  StringExtension.swift
//  Safir El3rood
//
//  Created by mohamed elmaazy on 7/26/18.
//  Copyright © 2018 Internet Plus. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    func stringFromHtml() -> NSAttributedString? {
        let htmlData = NSString(string: self).data(using: String.Encoding.unicode.rawValue)
        
        let options = [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html]
        
        let attributedString = try! NSAttributedString(data: htmlData!, options: options, documentAttributes: nil)
        return attributedString
    }
    
    func isNumber() -> Bool {
        let numberCharacters = NSCharacterSet.decimalDigits.inverted
        return !self.isEmpty && self.rangeOfCharacter(from: numberCharacters) == nil
    }
    
    var withoutHtmlTags: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options:
            .regularExpression, range: nil).replacingOccurrences(of: "&[^;]+;", with:
                "", options:.regularExpression, range: nil).replacingOccurrences(of: "\r\n", with:
                    "", options:.regularExpression, range: nil)
    }
    
    func isEgyptianMobileNumber() -> Bool {
        return self.count == 11 && self.prefix(2) == "01" ? true : false
    }
    
    var localize: String {
        return NSLocalizedString(self, comment: "")
    }
    
    var trimmed: String {
           return self.trimmingCharacters(in: .whitespacesAndNewlines)
       }
    
    func checkFileExist() -> Bool {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let url = NSURL(fileURLWithPath: path)
        if let pathComponent = url.appendingPathComponent((self as NSString).lastPathComponent) {
            let filePath = pathComponent.path
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                print("FILE AVAILABLE")
                return true
            } else {
                print("FILE NOT AVAILABLE")
                return false
            }
        } else {
            print("FILE PATH NOT AVAILABLE")
            return false
        }
    }
    
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.height
    }
    
    func formateDAte(dateString:String?,formateString:String)  -> String {
        if let dateConstant = dateString
        {
            
            let dateFormatterGet = DateFormatter()
            dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSS"
            
            let stringDateMily = dateFormatterGet.date(from: dateConstant )
            if let BigDateConstan = stringDateMily
            {
                let formattedDate1 = dateFormatterGet.string(from: BigDateConstan)
                
                dateFormatterGet.dateFormat = "EEEE"
                
                let year_month_day = dateFormatterGet.string(from: BigDateConstan)
                //                            self.dayText.text = year_month_day
                
                
                
                dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm"
                
                let dayNumber = dateFormatterGet.string(from: BigDateConstan)
                
                
                //                            self.datyNumnber.text = dayNumber
                
                return dayNumber
                dateFormatterGet.dateFormat = "LLLL"
                
                let monthtext = dateFormatterGet.string(from: BigDateConstan)
                
                
                //                            self.monthText.text = monthtext
            }
            else{
                
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
                
                let stringDateWithoutMily = dateFormatterGet.date(from: dateConstant)
                
                dateFormatterGet.dateFormat = formateString
                
                
                let formattedDate1 = dateFormatterGet.string(from: stringDateWithoutMily!)
                
                
                dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm"
                //                            self.dayText.text = formattedDate1
                
                
                dateFormatterGet.dateFormat = formateString
                
                let dayNumber = dateFormatterGet.string(from: stringDateWithoutMily!)
                
                
                //                           self.datyNumnber.text = dayNumber
                
                
                dateFormatterGet.dateFormat = formateString
                
                let monthText = dateFormatterGet.string(from: stringDateWithoutMily!)
                
                
                return formattedDate1
                
            }
            
        }
        
        return ""
    }
}


