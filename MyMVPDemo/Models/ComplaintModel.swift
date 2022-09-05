//
//  ComplaintModel.swift
//  Youmeda
//
//  Created by m3azy on 05/02/2021.
//

import Foundation
import MOLH

class ComplaintModel: Codable {
    let id: String?
    let code: String?
    let ArabicName: String?
    let EnglishName: String?
    let SpecialtyId: String?
    let SpecialtyId2: String?
    let SpecialtyId3: String?
    let pages_count: String?
    let rnum: String?
    let pos_index: String?
    let En_pos_index: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
