//
//  PharmacyOffersResponseModel.swift
//  Youmeda
//
//  Created by Mohamed on 1/18/21.
//

import Foundation

class PharmancyOfferModel: Codable {
    let Promo: PharmacyOfferPromoModel?
    let Services: [PharmacyOfferServiceModel]?
    let img64: String?
    let Diseases: [PharmacyOffersDiseaseModel]?
    var qty: String?
}

import MOLH

class PharmacyOfferPromoModel: Codable {
    let EnglishName: String?
    let ArabicName: String?
    let DescriptionAR: String?
    let DescriptionEN: String?
    let DiseaseIds: String?
    let Gender: String?
    let Discount: String?
//    let AgeGroup": null,
    let ExpireDate: String?
    let AccountId: String?
    let OldPrice: String?
    let NewPrice: String?
    let Id: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
    let PharmacyPromoCategoryId: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getDescription() -> String {
        MOLHLanguage.isArabic() ? DescriptionAR ?? "" : DescriptionEN ?? ""
    }
}

class PharmacyOfferServiceModel: Codable {
    let MedicationCode: String?
    let MedicationNameAr: String?
    let MedicationNameEn: String?
    let PharmacyPromoId: String?
    let Price: String?
    let Quantity: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? MedicationNameEn ?? "" : MedicationNameAr ?? ""
    }
}

class PharmacyOffersDiseaseModel: Codable {
    let EnglishName: String?
    let ArabicName: String?
    let Code: String?
//    let Parent_Code": null,
    let Sort: String?
//    let Speciality_Id": null,
    let Is_Chronic: String?
    let Id: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
}
