//
//  OxygenTankModel.swift
//  Youmeda
//
//  Created by Mohamed on 4/16/21.
//

import Foundation
import MOLH

class OxygenTankModel: Codable {
    
    let Code: String?
    let EnglishName: String?
    let ArabicName: String?
    let Litre: String?
    let Price: String?
    let Days: String?
    let RentPrice: String?
    let IsAccessoris: String?
    let Sort: String?
    let Id: String?
    var qty: Int?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
