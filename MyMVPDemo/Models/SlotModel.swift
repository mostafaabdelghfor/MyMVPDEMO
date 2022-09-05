//
//  SlotModel.swift
//  Youmeda
//
//  Created by Mohamed on 2/9/21.
//

import Foundation
import MOLH

class SlotModel: Codable {
    let start: String?
    let end: String?
    let status: String?
    let ShiftId: String?
    let QueueNumber: String?
    let SlotDate: String?
    let startIOS: String?
    let endIOS: String?
    
    let ArabicfromTime: String?
    var date: String?
    let fromTime: String?
    let toTime: String?
    
    func getFromTime() -> String {
        return MOLHLanguage.isArabic() ? ArabicfromTime ?? "" : fromTime ?? ""
    }
}
