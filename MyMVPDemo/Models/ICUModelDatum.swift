//
//  File.swift
//  Youmeda
//
//  Created by mostafa gabry on 2/22/21.
//

import Foundation
import MOLH

struct ICUModelDatum: Codable {
    let englishName, arabicName: String?
    let isActive: String?
    let id: String?
    let creationDate, lastUpdateDate: String?
    let isDeleted: String?

    enum CodingKeys: String, CodingKey {
        case englishName = "EnglishName"
        case arabicName = "ArabicName"
        case isActive = "IsActive"
        case id = "id"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case isDeleted = "IsDeleted"
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}

