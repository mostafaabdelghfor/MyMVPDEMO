//
//  GTTextView.swift
//  Duty
//
//  Created by Mohamed Ismail on 6/7/18.
//  Copyright © 2018 GreenTech. All rights reserved.
//

import UIKit
import UITextView_Placeholder

class GTTextView: UITextView {

    override func awakeFromNib() {
        super.awakeFromNib()
        GTTextView.setCustomFontFor(txtView: self)
        updateAlignmentUI()
        configureUI()
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
        resignFirstResponder()
    }
    
    class func setCustomFontFor(txtView:GTTextView){
        let size  = txtView.font?.pointSize
//        if LanguageManager.isArabic() {
//            let fontName = (txtView.font?.isBold)! ? LanguageManager.Font.ARABIC_FONT_BOLD : LanguageManager.Font.ARABIC_FONT_REGULAR
//            txtView.font = UIFont.init(name: fontName, size: size!)
//        }else {
//            let fontName = (txtView.font?.isBold)! ? LanguageManager.Font.ENGLISH_FONT_BOLD : LanguageManager.Font.ENGLISH_FONT_REGULAR
//            txtView.font = UIFont.init(name: fontName, size: size!)
//        }
    }
    func updateAlignmentUI(){
//        if self.textAlignment == .natural {
//            self.textAlignment = LanguageManager.isArabic() ? .right : .left
//        }
    }
    
    
    @IBInspectable var localizedText: String = ""{
        didSet{
            text = "localizedText.localized()"
        }
        
    }
    @IBInspectable var localizedPlaceHolder: String = ""{
        didSet{
            placeholder = "localizedPlaceHolder.localized()"
        }
        
    }
}
