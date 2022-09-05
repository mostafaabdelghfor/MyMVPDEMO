//
//  DoctorModel.swift
//  Youmeda
//
//  Created by m3azy on 04/02/2021.
//

import Foundation
import MOLH

class DoctorModel: Codable {
    var IsMale: String?
    var SpecialityAr: String?
    var SpecialityEn: String?
    var DoctorId: String?
    var EnglishName: String?
    var ArabicName: String?
    var ThisSpec: String?
    var enIndex: String?
    var arIndex: String?
    var SubSpecialities: [SubSpecialityModel]?
    
    var CurrentPage: String?
    var pages_count: String?
    var ProviderId: String?
    var LicenseNumber: String?
    var DoctorAboutAr: String?
    var DoctorAboutEn: String?
    var MobileNumber: String?
    var DoctorRate: String?
    var DoctorTitle: String?
    var DoctorTitleAr: String?
    var SpecialtNameAr: String?
    var SpecialtNameEn: String?
    var LicenceId: String?
    var SpecialtId: String?
    var SpecialtCode: String?
    var Price: String?
    var IsFavorite: String?
    var CurrencName: String?
    var IntervalOfConsultation: String?
    var Ratecount: String?
    var Source: String?
    var selectedSlot: SlotModel?
    var callSlotApi: Bool?
    var ClassFlag: String?
    var AccountArabicName: String?
    var AccountId: String?
    var AccountEnglishName: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getSpeciality() -> String {
        return MOLHLanguage.isArabic() ? SpecialtNameAr ?? "" : SpecialtNameEn ?? ""
    }
    
    func getAbout() -> String {
        return MOLHLanguage.isArabic() ? DoctorAboutAr ?? "" : DoctorAboutEn ?? ""
    }
    
    func getDoctorSpeciality() -> String {
        return MOLHLanguage.isArabic() ? SpecialityAr ?? "" : SpecialityEn ?? ""
    }
    
    func getAccountName() -> String {
        return MOLHLanguage.isArabic() ? AccountArabicName ?? "" : AccountEnglishName ?? ""
    }
    
    init() {
        IsMale = nil
        SpecialityAr = nil
        SpecialityEn = nil
        DoctorId = nil
        EnglishName = nil
        ArabicName = nil
        ThisSpec = nil
        enIndex = nil
        arIndex = nil
        SubSpecialities = nil
        CurrentPage = nil
        pages_count = nil
        ProviderId = nil
        LicenseNumber = nil
        DoctorAboutAr = nil
        DoctorAboutEn = nil
        MobileNumber = nil
        DoctorRate = nil
        DoctorTitle = nil
        DoctorTitleAr = nil
        SpecialtNameAr = nil
        SpecialtNameEn = nil
        LicenceId = nil
        SpecialtId = nil
        SpecialtCode = nil
        Price = nil
        IsFavorite = nil
        CurrencName = nil
        IntervalOfConsultation = nil
        Ratecount = nil
        Source = nil   
    }
}
