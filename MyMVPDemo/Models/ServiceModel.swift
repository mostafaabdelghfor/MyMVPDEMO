//
//  ServiceModel.swift
//  Youmeda
//
//  Created by m3azy on 14/02/2021.
//

import Foundation
import MOLH

class ServiceModel: Codable {
    let ServiceEn: String?
    let ServiceAr: String?
    let ServicePrice: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ServiceAr ?? "" : ServiceEn ?? ""
    }
}
