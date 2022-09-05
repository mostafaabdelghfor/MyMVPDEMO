//
//  GovernerateModel.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation
import MOLH

class GovernerateModel: Codable {
    let id: String?
    let ArabicName: String?
    let EnglishName: String?
    let Lat: String?
    let Lng: String?
    let pages_count: String?
    let rnum: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    init(id:String?,ArabicName:String?,EnglishName:String?,Lat:String?,Lng:String?,pages_count:String?,rnum:String?) {
        self.id = id
        self.ArabicName = ArabicName
        self.EnglishName = EnglishName
        self.Lat = Lat
        self.Lng = Lng
        self.pages_count = pages_count
        self.rnum = rnum
    }
}
