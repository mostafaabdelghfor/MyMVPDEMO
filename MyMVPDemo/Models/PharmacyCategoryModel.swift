//
//  PharmacyCategoryModel.swift
//  Youmeda
//
//  Created by Mohamed on 1/18/21.
//

import Foundation
import MOLH

class PharmacyCategoryModel: Codable {
    
    var HasChilds: String?
    var ArabicName: String?
    var EnglishName: String?
    var GroupCode: String?
    var CatImage: String?
    var Id: String?
    var IsDeleted: String?
    var offers: [PharmancyOfferModel]?
    
    var selected: Bool?
    var Color: String?
    var sort: String?
    var IsSpecial: String?
    
    init() {
        HasChilds = nil
        ArabicName = nil
        EnglishName = nil
        GroupCode = nil
        CatImage = nil
        Id = nil
        IsDeleted = nil
        offers = nil
        selected = nil
        Color = nil
        sort = nil
        IsSpecial = nil
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
