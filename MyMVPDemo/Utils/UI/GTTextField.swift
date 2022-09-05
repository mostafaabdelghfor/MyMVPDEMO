//
//  GTTextField.swift
//  Duty
//
//  Created by Mohamed Ismail on 6/7/18.
//  Copyright © 2018 GreenTech. All rights reserved.
//

import UIKit

class GTTextField: UITextField {
    override var placeholder: String?{
        didSet{
//            if let text = placeholder{
//                attributedPlaceholder = NSAttributedString(string: text,
//                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor(hex: 0x8E8E93)])
//            }
            textAlignment = .natural
        }
//
    }
//    var onDoneBtn : ActionBlock?
    override func awakeFromNib() {
        super.awakeFromNib()
        updateAlignmentUI()
        configureUI()
        GTTextField.setCustomFontFor(txtField: self)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        GTTextField.setCustomFontFor(txtField: self)
    }
    func configureUI(){
//        let bar = UIToolbar()
//        let doneBtn = UIBarButtonItem(title: "Done".localized(), style: .plain, target: self, action: #selector(dismissBtn))
//        
////        doneBtn.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : Util.UI.APP_TINT_COLOR, NSAttributedString.Key.font: LanguageManager.getLocalizedFont(fontSize: 14)], for: .normal)
//        
//        bar.items = [doneBtn]
//        bar.sizeToFit()
//        self.inputAccessoryView = bar
    }
    @objc func dismissBtn(){
//        onDoneBtn?()
        resignFirstResponder()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    class func setCustomFontFor(txtField:UITextField){
        let size  = txtField.font?.pointSize
//        if LanguageManager.isArabic() {
//            let fontName = (txtField.font?.isBold)! ? LanguageManager.Font.ARABIC_FONT_BOLD : LanguageManager.Font.ARABIC_FONT_REGULAR
//            txtField.font = UIFont.init(name: fontName, size: size!)
//        }else {
//            let fontName = (txtField.font?.isBold)! ? LanguageManager.Font.ENGLISH_FONT_BOLD : LanguageManager.Font.ENGLISH_FONT_REGULAR
//            txtField.font = UIFont.init(name: fontName, size: size!)
//        }
        
    }
    func updateAlignmentUI(){
//        if self.textAlignment == .natural {
//            self.textAlignment = LanguageManager.isArabic() ? .right : .left
//        }
    }
    var isEmpty:Bool{
       if text?.count == 0 {
            return true
        }
        return false
    }

    @IBInspectable var localizedText: String = ""{
        didSet{
            text = "localizedText.localized()"
        }
        
    }
    
    @IBInspectable var localizedPlaceHolder: String = ""{
        didSet{
            self.placeholder = "localizedPlaceHolder.localized()"
        }
        
    }
}
