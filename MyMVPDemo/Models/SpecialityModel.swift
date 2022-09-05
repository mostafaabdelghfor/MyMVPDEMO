//
//  SpecialityModel.swift
//  Youmeda
//
//  Created by Mohamed on 2/6/21.
//

import Foundation
import MOLH

class SpecialityModel: Codable {
    var EnglishName: String?
    var ArabicName: String?
//    var Code: String?
    let HasPromtion: String?
    var SpecilaityId: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
    let Id: String?
    
    let KeyWordAR: String?
    let KeyWordEN: String?
    let IsHome: String?
    let IsVideo: String?
    let Code: String?
    let IsSpecial: String?
    
    
    
    init() {
        EnglishName = nil
        ArabicName = nil
//        Code = nil
        HasPromtion = nil
        SpecilaityId = nil
        CreationDate = nil
        LastUpdateDate = nil
        IsDeleted = nil
        Id = nil
        KeyWordAR = nil
        KeyWordEN = nil
        IsHome = nil
        IsVideo = nil
        Code = nil
        IsSpecial = nil
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
