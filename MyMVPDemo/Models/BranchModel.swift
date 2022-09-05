//
//  BranchModel.swift
//  Youmeda
//
//  Created by Mohamed on 2/9/21.
//

import Foundation
import MOLH

class BranchModel: Codable {
//    let slots: []?
    var Price: String?
    var Id: String?
    var AccountId: String?
    var EnglishName: String?
    var ArabicName: String?
    var BranchLat: String?
    var BranchLng: String?
    var AreaId: String?
    var GouvnermentId: String?
    var Phone: String?
    var AddressLat: String?
    var AddressLng: String?
    var BranchArName: String?
    var BranchEnName: String?
    var BranchId: String?
    var AddressAr: String?
    var AddressEn: String?
    var CityId: String?
    var HasPromotion: String?
    var LicenceId: String?
    var start: String?
    var end: String?
    var freedate: String?
    var Distance: String?
    var BranchEnglishName: String?
    var BranchArabicName: String?
    var BranchAdressAr: String?
    var BranchAdressEN: String?
    
    init() {
        self.Price = nil
        self.Id = nil
        self.AccountId = nil
        self.EnglishName = nil
        self.ArabicName = nil
        self.BranchLat = nil
        self.BranchLng = nil
        self.AreaId = nil

        self.GouvnermentId = nil
        self.Phone = nil
        self.AddressLat = nil
        self.AddressLng = nil
        self.BranchArName = nil
        self.BranchEnName = nil
        self.BranchId = nil
        self.AddressAr = nil
        self.AddressEn = nil
        self.HasPromotion = nil
        self.LicenceId = nil
        self.CityId = nil

        self.start = nil
        self.end = nil
        self.freedate = nil
        self.Distance = nil
        self.BranchEnglishName = nil
        self.BranchArabicName = nil
        self.BranchAdressAr = nil
        self.BranchAdressEN = nil

    }
    func getAddress() -> String {
        return MOLHLanguage.isArabic() ? AddressAr ?? "" : AddressEn ?? ""
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? BranchArName ?? "" : BranchEnName ?? ""
    }
    
    func getNamePromotion() -> String {
        return MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getNameHospital() -> String {
        return MOLHLanguage.isArabic() ? BranchArabicName ?? "" : BranchEnglishName ?? ""
    }
    
    func getAddressHospital() -> String {
        return MOLHLanguage.isArabic() ? BranchAdressAr ?? "" : BranchAdressEN ?? ""
    }
    
    
}
