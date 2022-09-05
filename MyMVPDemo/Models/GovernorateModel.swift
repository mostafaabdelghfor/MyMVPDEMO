//
//  GovernorateModel.swift
//  Youmeda
//
//  Created by m3azy on 04/02/2021.
//

import Foundation
import MOLH

class GovernorateModel: Codable {
    var id: String?
    var ArabicName: String?
    var EnglishName: String?
    var Lat: String?
    var Lng: String?
    var pages_count: String?
    var CountryId: String?
    var rnum: String?
    
    var govId: String?
    var cityId: String?
    
    init() {
        id = ""
        ArabicName = ""
        EnglishName = ""
        Lat = ""
        Lng = ""
        pages_count = ""
        CountryId = ""
        rnum = ""
        govId = ""
        cityId = ""
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
