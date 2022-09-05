//
//  SubSpecialityModel.swift
//  Youmeda
//
//  Created by Mohamed on 2/6/21.
//

import Foundation
import MOLH

class SubSpecialityModel: Codable {
    var ArabicName: String?
    var EnglishName: String?
    var SubSpecialityId: String?
    var SpecialtyId: String?
    var SubSpecialityEn: String?
    var SubSpecialityAr: String?
    
    init() {
        ArabicName = nil
        EnglishName = nil
        SubSpecialityId = nil
        SpecialtyId = nil
        SubSpecialityEn = nil
        SubSpecialityAr = nil
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getOtherName() -> String {
        return MOLHLanguage.isArabic() ? SubSpecialityAr ?? "" : SubSpecialityEn ?? ""
    }
}
