//
//  PharmacyUrl.swift
//  Youmeda
//
//  Created by Mohamed on 1/9/21.
//

import Foundation
 
class PharmacyUrl {
    
    static let instance = PharmacyUrl()
    private init () {}
    
    fileprivate let PHARMACY_BASE_URL = "\(BASE_URL)Pharmacy/"
    #if DEBUG
        let PHARMACY_IMAGES_BASE_URL = "http://40.127.194.127:1278/"
        let PHARMACY_URL_IMAGES = "http://40.127.194.127:1278/Content/Design/img/DrugCategories/"
        let PHARMACY_OFFER_CATEGORY_IMAGE_URL = "http://40.127.194.127:1278/Uploads/PharmactPromoCategories/"
    #else
        let PHARMACY_IMAGES_BASE_URL = "https://youmeda.com/"
        let PHARMACY_URL_IMAGES = "https://youmeda.com/Content/Design/img/DrugCategories/"
        let PHARMACY_OFFER_CATEGORY_IMAGE_URL = "https://youmeda.com/Uploads/PharmactPromoCategories/"
    #endif
    
    func getMedicineURL(fromIndex: Int, toIndex: Int, searchKey: String = "") -> String {
        return "\(BASE_URL)Salamtak/GetMedicationItems"
    }
    
    func getPharmacyCategories(id: String) -> String {
        return  "\(PHARMACY_BASE_URL)GetMedicationsGroups?GroupCode=\(id)"
    }
    
    func getPharmacyOffers() -> String {
        return "\(PHARMACY_BASE_URL)Pharmacy_Patients_Promotions"
    }
    
    func getFinishCart() -> String {
        return "\(PHARMACY_BASE_URL)SubmitPharmacyOrder"
    }
    
    func checkCart() -> String {
        return "\(BASE_URL)CRM/ValidatePharmacyCart"
    }
    
    func getCheckCart() -> String {
        return "\(PHARMACY_BASE_URL)Pharmacy_Cart_Checkup"
    }
    
    func getRepeatOrder() -> String {
        return "\(PHARMACY_BASE_URL)RepeatPharmacyOrder"
    }
    
    func getPharmacyOrders() -> String {
        return "\(PHARMACY_BASE_URL)GetPatientOrders"
    }
    
    func getCancelOrder() -> String {
        return "\(PHARMACY_BASE_URL)CancelOnlineRequest"
    }
    
    func getRepeateOrder() -> String {
        return "\(PHARMACY_BASE_URL)RepeatPharmacyOrder"
    }
    
    func getDoseReminders() -> String {
        return "\(PHARMACY_BASE_URL)GetMedicationRemindersInRangeForUser"
    }
    
    func getMedicationUnitsURL() -> String {
        return "\(BASE_URL)Salamtak/GetMedicationUnits"
    }
    
    func saveDose() -> String {
        return "\(PHARMACY_BASE_URL)AddMedicationReminder"
    }
    
    func editDose() -> String {
        return "\(PHARMACY_BASE_URL)EditMedicationReminder"
    }
    
    func rateOrder() -> String {
        return "\(PHARMACY_BASE_URL)AddRate"
    }
    
    func deleteDose() -> String {
        return "\(PHARMACY_BASE_URL)DeleteMedicitionReminder"
    }
    
    func offersCats() -> String {
        return "\(PHARMACY_BASE_URL)Get_Pharmacy_Promotions_Category"
    }
    
    func offersWithCatId(_ id: String) -> String {
        return "\(PHARMACY_BASE_URL)Pharmacy_Patients_Promotions?PromoCategoryId=\(id)"
    }
    
    func offersBrandsWithCatId(_ id: String) -> String {
        return "\(PHARMACY_BASE_URL)Get_Pharmacy_Promotions_Brands?CategoryId=\(id)"
    }
    
    func productDetails(_ code: String) -> String {
        return "\(PHARMACY_BASE_URL)Get_Product_Details?ItemCode=\(code)"
    }
}
