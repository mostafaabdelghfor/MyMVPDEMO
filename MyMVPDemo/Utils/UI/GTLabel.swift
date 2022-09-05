//
//  GTLabel.swift
//  Duty
//
//  Created by Mohamed Ismail on 6/7/18.
//  Copyright © 2018 GreenTech. All rights reserved.
//

import UIKit

@IBDesignable
class GTSearchBar: UISearchBar {
    var currentTextField : UITextField? {
        get{
            return subviews.first?.subviews.filter({$0 is UITextField}).first as? UITextField
        }
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        GTTextField.setCustomFontFor(txtField: currentTextField ?? UITextField())
        currentTextField?.textColor = .lightGray
//        currentTextField?.font = LanguageManager.getLocalizedFont(fontSize: 12)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        updateAlignmentUI()
        GTTextField.setCustomFontFor(txtField: currentTextField ?? UITextField())

    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        GTTextField.setCustomFontFor(txtField: currentTextField ?? UITextField())
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    func updateAlignmentUI(){
        if self.currentTextField?.textAlignment == .natural {
//            self.currentTextField?.textAlignment = LanguageManager.isArabic() ? .right : .left
        }
    }
    

}
@IBDesignable
class GTLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        updateAlignmentUI()
        GTLabel.setCustomFontFor(label: self)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        GTLabel.setCustomFontFor(label: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func truncateOnTwoLinesAndAhalf(){
        let arrString =  getLinesArrayOfString()
        if arrString.count >= 3{
            var normaliedText = arrString.first ?? ""
            normaliedText = normaliedText + (arrString[1] )
            if (arrString[2].count) < Int(arrString[1].count / 2) {
                normaliedText = normaliedText + (arrString[2] )
            }else {
                var lastLine = arrString[2]
                lastLine = String(lastLine.prefix(Int(arrString[1].count / 2) ))
                normaliedText = normaliedText + lastLine
            }
            text = normaliedText + ".."
            
        }
    }
    func countLabelLines() -> Int {
        // Call self.layoutIfNeeded() if your view uses auto layout
        let myText = (self.text) ?? ""
        
        let rect = CGSize(width: self.bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let labelSize = myText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.font], context: nil)
        
        return Int(ceil(CGFloat(labelSize.height) / self.font.lineHeight))
    }
   
    func getLinesArrayOfString() -> [String] {
        
        /// An empty string's array
        var linesArray = [String]()
        
        guard let text = self.text, let font = self.font else {return linesArray}
        
        let rect = self.frame
        
        let myFont: CTFont = CTFontCreateWithName(font.fontName as CFString, font.pointSize, nil)
        let attStr = NSMutableAttributedString(string: text)
        attStr.addAttribute(kCTFontAttributeName as NSAttributedString.Key, value: myFont, range: NSRange(location: 0, length: attStr.length))
        
        let frameSetter: CTFramesetter = CTFramesetterCreateWithAttributedString(attStr as CFAttributedString)
        let path: CGMutablePath = CGMutablePath()
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: 100000), transform: .identity)
        
        let frame: CTFrame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, nil)
        guard let lines = CTFrameGetLines(frame) as? [Any] else {return linesArray}
        
        for line in lines {
            let lineRef = line as! CTLine
            let lineRange: CFRange = CTLineGetStringRange(lineRef)
            let range = NSRange(location: lineRange.location, length: lineRange.length)
            let lineString: String = (text as NSString).substring(with: range)
            linesArray.append(lineString)
        }
        return linesArray
    }

    class func setCustomFontFor(label:UILabel){
        let size  = label.font.pointSize
//        if LanguageManager.isArabic() {
//            let fontName = label.font.isBold ? LanguageManager.Font.ARABIC_FONT_BOLD : LanguageManager.Font.ARABIC_FONT_REGULAR
//            label.font = UIFont.init(name: fontName, size: size)
//
////            print("customLabel: \(label.text): \(fontName), Size: \(size)")
//
//        }else {
//            let fontName = label.font.isBold ? LanguageManager.Font.ENGLISH_FONT_BOLD : LanguageManager.Font.ENGLISH_FONT_REGULAR
//            label.font = UIFont.init(name: fontName, size: size)
//        }
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.2
    }
    
    func disableAdgustFontSizeWithWidth() {
        self.adjustsFontSizeToFitWidth = false
    }
    
    func updateAlignmentUI(){
        if self.textAlignment == .natural {
//            self.textAlignment = LanguageManager.isArabic() ? .right : .left
        }
    }
    
    
    @IBInspectable var localizedText: String = ""{
        didSet{
            text = "localizedText.localized()"
        }
        
    }
    @IBInspectable var roundIt: Bool = false  {
        didSet{
            if roundIt {
                layer.cornerRadius = frame.height / 2
                //                layer.masksToBounds = (frame.height / 2) > 0
                
            }
        }
    }
}
