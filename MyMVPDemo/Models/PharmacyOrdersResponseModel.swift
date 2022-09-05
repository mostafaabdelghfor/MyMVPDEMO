//
//  PharmacyOrdersResponseModel.swift
//  Youmeda
//
//  Created by Mohamed on 3/28/21.
//

import Foundation
import MOLH

class PharmacyOrdersResponseModel: Codable {
    let Data: [PharmacyOrder]?
}

class PharmacyOrder: Codable {
    let Master: PharmacyOrderMaster?
    let Details: [PharmacyOrderDetails]?
    let Attachments: [RoshetaModel]?
    
    var arrayMedicineTable: [MedicineTableCellModel]?
    var tableOpened: Bool?
}

class MedicineTableCellModel: Codable {
    var name: String?
    var price: String?
    var qty: String?
    var image: String?
    
    init() {
        name = nil
        price = nil
        qty = nil
        image = nil
    }
}

class PharmacyOrderMaster: Codable {
    let Status: String?
    let Details: String?
    let Attachments: String?
    var RateValue: String?
    let Notes: String?
    let IsCurrent: String?
    let TotalPrice: String?
    let RequestId: String?
    let PatientId: String?
    let PatientName: String?
    let PatientMobileNumber: String?
    let PatientImage: String?
    let IsMale: String?
    let PatientAge: String?
    let Class: String?
    let GouvernementId: String?
    let GouvernementName: String?
    let BranchId: String?
    let BranchName: String?
    let BranchAddress: String?
    let RequestDate: String?
    let ServicesCount: String?
    let ReplayDatetime: String?
    let Address: String?
    let BuildingNumber: String?
    let FloorNumber: String?
    let UnitNumber: String?
    let StreetName: String?
    let SpecialMarker: String?
    let Lat: String?
    let Lng: String?
    let GovId: String?
    let DistrictName: String?
    let DistrictId: String?
    let PharmacyBranchId: String?
    let PharmacyBranchName: String?
    let DeliveryPrice: String?
    let DeliveryMin: String?
    let AccountId: String?
    let DeliveryMethod: String?
}

class PharmacyOrderDetails: Codable {
    let RequestServiceId: String?
    let DrugCode: String?
    let DrugEnName: String?
    let DrugName: String?
    let DrugPrice: String?
    let Quantity: String?
    let TotalPrice: String?
    let DrugPicUrl: String?
    let `Type`: String?
    let IsDrug: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? DrugEnName ?? "" : DrugName ?? ""
    }
}

class RepeateOrderResponseModel: Codable {
    let Data: [PharmacyOrderDetails]?
}

class RoshetaModel: Codable {
    
//    let PharmacyRequestMaster:
    let PharmacyRequestMasterId: String?
    let PicUrl: String?
    let Price: String?
    let Id: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
    
}
