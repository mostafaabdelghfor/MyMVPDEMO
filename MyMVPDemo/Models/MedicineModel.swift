//
//  MedicinModel.swift
//  Youmeda
//
//  Created by Mohamed on 1/18/21.
//

import Foundation
import MOLH

class MedicineModel: Codable {
    
    var Id: String?
    var code: String?
    var ArabicName: String?
    var EnglishName: String?
    var pages_count: String?
    var rnum: String?
    var Quantity: String?
    var indexCount: String?
    var SpecialtyId: String?
    var SpecialtyId2: String?
    var SpecialtyId3: String?
    var Description: String?
    var PicUrl: String?
    var Price: String?
    var ItemPrice: String?
    var OldPrice: String?
    var qty: String?
    var typeOffer: String?
    var IsDrug: String?
    var typeNotFound: Bool?
    
    var DescriptionAr: String?
    var DescriptionEn: String?
    var Materials: [MedicineMaterialModel]?
    var Doses: [ItemDoseDetails]?
    
    init() {
        Id = ""
        code = ""
        ArabicName = ""
        EnglishName = ""
        pages_count = ""
        rnum = ""
        Quantity = ""
        indexCount = ""
        SpecialtyId = ""
        SpecialtyId2 = ""
        SpecialtyId3 = ""
        Description = ""
        PicUrl = ""
        Price = "0"
        OldPrice = "0"
        qty = ""
        typeOffer = "1"
        Doses = nil
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getDescription() -> String {
        MOLHLanguage.isArabic() ? DescriptionAr ?? "" : DescriptionEn ?? ""
    }
}

class MedicineMaterialModel: Codable {
    
    let Code: String?
    let MaterialName: String?
    let Id: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
}

class ItemDoseDetails: Codable {
    
    let EnglishName: String?
    let ArabicName: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
