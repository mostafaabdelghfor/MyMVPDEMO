//
//  PaymentUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/18/21.
//

import Foundation
import MOLH
class PaymentUrl {
    
    static let instance = PaymentUrl()
    private init () {}
    
    func getPaymentWebViewUrl() -> String {
        return "\(PharmacyUrl.instance.PHARMACY_IMAGES_BASE_URL)" + "\(MOLHLanguage.isArabic() ? "/ar-eg" : "/en-US")" + "/Payment_OnlineCall/PaymentProcess"
    }

    func getPaymentUrl() -> String {
        return "\(BASE_URL)" + "PaymentProcess/PaymentProcessDetails"
    }
    
    func getUpdatePaymentUrl() -> String {
        return "\(BASE_URL)" + "PaymentProcess/UpdatePaymentStatus"
    }
}
