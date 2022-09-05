//
//  DoctorClass.swift
//  Youmeda
//
//  Created by Mohamed on 2/9/21.
//

import Foundation
import MOLH

class DoctorClass: Codable {
    var Id: String?
    var ArabicName: String?
    var EnglishName: String?
    var IsSelectedClass: String?
    var IsCash: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "medicalInsurance" : EnglishName ?? "medicalInsurance"
    }
    
    init() {
        Id = nil
        ArabicName = nil
        EnglishName = nil
        IsSelectedClass = nil
        IsCash = nil
    }
}
