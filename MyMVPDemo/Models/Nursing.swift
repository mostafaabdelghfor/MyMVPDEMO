//
//  NurseService.swift
//  Youmeda
//
//  Created by Khabeer on 1/17/21.
//

import Foundation
struct nurseService: Codable {
    let nurseServices: [NurseService]
    let nurseQualifications: String?
    let success: String

    enum CodingKeys: String, CodingKey {
        case nurseServices = "NurseServices"
        case nurseQualifications = "NurseQualifications"
        case success = "Success"
    }
}

// MARK: - NurseService
struct NurseService: Codable {
    let arabicName: String?
    let descriptionEn: String?
    let picName, creationDate, lastUpdateDate, colorClass: String?
    let descriptionAr: String?
    let isDeleted: String?
    let englishName: String?
    let id: String?

    enum CodingKeys: String, CodingKey {
        case arabicName = "ArabicName"
        case descriptionEn = "DescriptionEn"
        case picName = "PicName"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case colorClass = "ColorClass"
        case descriptionAr = "DescriptionAr"
        case isDeleted = "IsDeleted"
        case englishName = "EnglishName"
        case id = "Id"
    }
}
class NursingPricingModel: Codable {
    
    var PageCount: String?
    var ArabicMessage: String?
    var Code: String?
    var CurrentPage: String?
    var price : String?
    var EnglishMessage : String?
    var IsArabic : String?
    var VisitStatus : String?
    var Success : String?
}
struct NurseQualification: Codable {
    let Id: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
    let DescriptionEn: String?
    let CreationDate: String
    let DescriptionAr: String?
    let ArabicName, EnglishName: String

}
struct NurseQualificationObj: Codable {
    let NurseQualifications: [NurseQualification]?
    let Success: String?
    let NurseServices: String?
}
struct ArrayOfUploads {
    var AttachmentName = "Other"
    var AttachmentType = 1
    var Base46 = ""
    var Extension = ""
}

struct imagesIdObj: Codable {
    let Data: [String]?
    let Code: String?
    let ArabicMessage, EnglishMessage: String?
    let Success: String?
}


struct NursingRequestsModel: Codable {
    var Data: [NursingRequestData]?
    var Success: String?
    var Code: String?
    var EnglishMessage, ArabicMessage: String?
    var IsOnline: String?
}

// MARK: - Datum
struct NursingRequestData: Codable {
    var ActualTotalPaid: String?
    var CancellationReason: String?
    var ClassId: String?
    var Currency: String?
    var fawryFeePrice, fawryRefNumber: String?
    var Ispiad: String?
    var IsOnline : String?
    var PaidValue: String?
    var IsMale: String?
    var PINCode: String?
    var IsRate: String?
    var NetworkReference: String?
    var Notes, NursingProvider: String?
    var NurseName: String?
    var Image1, Image2: String?
    var NurseServiceName, NurseServiceNameEng: String?
    var OnlinePatientAddressesId, OnlinePatientId, PatientNumber: String?
    var paymentMethod: String?
    var PaymentType, PeriodNumber, PeriodUnit: String?
    var Qualification: String?
    var QualificationId, NursingServiceId: String?
    var RequestDate: String?
    var ReplayDate, SecureHash, Service: String?
    var Status: String?
    var SystemReference: String?
    var TotalNetPayment, TotalServicesPrice: String?
    var TxnDate: String?
    var GovId, CityId: String?
    var AreaId: String?
    var RequestId: String?
    var Id: String?
    var Lat, Lng: String?
    var OnlinePatientPhoneNumber, QualificationEnglishName, QualificationArabicName, OnlinePatientName: String?
    var Rate: String?
    var Address: String?
}




