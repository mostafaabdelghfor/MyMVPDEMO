//
//  PaymentModel.swift
//  Youmeda
//
//  Created by Mohamed on 3/24/21.
//

import Foundation

class PaymentModel: Codable {
    let SystemReference: String?
    let merchantRefNumber: String?
    let RequestDate: String?
    let patientName: String?
    let patientNameEN: String?
    let Slot: String?
    let reserviaionId: String?
    let status: String?
    let RequestType: String?
    let TotalNetPayment: String?
    let SpecialtNameEN: String?
    let SpecialtNameAR: String?
    let AccountName: String?
    let AccountNameEN: String?
    let CurrencName: String?
    let AddressAr: String?
    let AddressEn: String?
    let PaymentType: String?
    let TotalServicesPrice: String?
    let fawryRefNumber: String?
    let fawryFeePrice: String?
    let Ispiad: String?
    let HideCash: String?
    let paymentMethod: String?
    let ActualPaid: String?
    let WalletPaid: String?
    let _Services: [PaymentServiceModel]?
}

class PaymentServiceModel: Codable {
    let ServiceNameAr: String?
    let ServiceNameEn: String?
}
