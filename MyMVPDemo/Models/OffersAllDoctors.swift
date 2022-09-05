// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation
import MOLH

// MARK: - Welcome
//struct offersBigModel: Codable {
//    let promotionVMData: [PromotionVMDatum]
//    let imgBase: String?
//    let success: String?
//    let code: String?
//    let englishMessage, arabicMessage: String?
//    let currentPage: String?
//    let isArabic: String?
//    let pageCount: String?
//    let visitStatus: String?
//
//    enum CodingKeys: String, CodingKey {
//        case promotionVMData = "PromotionVMData"
//        case imgBase = "ImgBase"
//        case success = "Success"
//        case code = "Code"
//        case englishMessage = "EnglishMessage"
//        case arabicMessage = "ArabicMessage"
//        case currentPage = "CurrentPage"
//        case isArabic = "IsArabic"
//        case pageCount = "PageCount"
//        case visitStatus = "VisitStatus"
//    }
//}

// MARK: - PromotionVMDatum
//struct PromotionVMDatum: Codable {
//    let promoTionID: String?
//    let account: Account?
//    let branches: [Branchpro]?
//    let specialty: Specialty?
//    let services: [PromotionService]?
//    let descriptionEN, descriptionAR: String?
//    let specialtyEnglishName, specialtyArabicName: String?
//    let startDate, endDate: String?
//    let price, discount, discountType: String?
//    let isActive: String?
//    let imageURL: String?
//    let doctorImageName: String?
//    let NewPrice: String?
//    
//    func getDescription() -> String {
//        MOLHLanguage.isArabic() ? descriptionAR ?? "" : descriptionEN ?? ""
//    }
//
//    enum CodingKeys: String, CodingKey {
//        case promoTionID = "PromoTionId"
//        case account = "Account"
//        case branches = "Branches"
//        case specialty = "Specialty"
//        case services = "Services"
//        case descriptionEN = "DescriptionEN"
//        case descriptionAR = "DescriptionAR"
//        case specialtyEnglishName = "SpecialtyEnglishName"
//        case specialtyArabicName = "SpecialtyArabicName"
//        case startDate = "StartDate"
//        case endDate = "EndDate"
//        case price = "Price"
//        case discount = "Discount"
//        case discountType = "DiscountType"
//        case isActive = "IsActive"
//        case imageURL = "ImageUrl"
//        case doctorImageName = "DoctorImageName"
//        case NewPrice = "NewPrice"
//    }
//}

// MARK: - Account
struct Account: Codable {
    let id: String?
    let arabicName, englishName: String?
    let aboutAccount, isPolyClinic: String?
    let type: String?
    let clinivisorAccountID, branches: String?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case arabicName = "ArabicName"
        case englishName = "EnglishName"
        case aboutAccount = "AboutAccount"
        case isPolyClinic = "IsPolyClinic"
        case type = "Type"
        case clinivisorAccountID = "ClinivisorAccountId"
        case branches = "Branches"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}

// MARK: - Branch
struct Branchpro: Codable {
    let averageRating: String?
    let branchAdressAr, branchAdressEN, branchArabicName, branchEnglishName: String?
    let branchID, gouvnermentID: String?
    let doctors: [Doctor]?
    let branchLicenseID, branchLat, branchLng, phone: String?
    let ratingComment, onlineRates, specialties, specialtiesLst: String?
    var selected: Bool?

    enum CodingKeys: String, CodingKey {
        case averageRating = "AverageRating"
        case branchAdressAr = "BranchAdressAr"
        case branchAdressEN = "BranchAdressEN"
        case branchArabicName = "BranchArabicName"
        case branchEnglishName = "BranchEnglishName"
        case branchID = "BranchId"
        case gouvnermentID = "GouvnermentId"
        case doctors = "Doctors"
        case branchLicenseID = "BranchLicenseId"
        case branchLat = "BranchLat"
        case branchLng = "BranchLng"
        case phone = "Phone"
        case ratingComment = "RatingComment"
        case onlineRates = "_OnlineRates"
        case specialties = "Specialties"
        case specialtiesLst = "_SpecialtiesLst"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? branchArabicName ?? "" : branchEnglishName ?? ""
    }
    
    func setFromBranchModel(_ model: BranchModel) {
        
    }
}

// MARK: - Doctor
struct Doctor: Codable {
    let specialty: Specialty
    let doctorID: String?
    let ip: String?
    let title: String?
    let name, arabicName: String?
    let rate: String?
    let about, arabicAbout: String?
    let activated: String?
    let userType, specialtyID: String?
    let lastSyncDate: String?
    let source: String?
    let isMale, isSync: String?
    let licenseID, mobileNumber: String?
    let id: String?
    let creationDate,lastUpdateDate: String?
    let isDeleted: String?

    enum CodingKeys: String, CodingKey {
        case specialty = "Specialty"
        case doctorID = "DoctorId"
        case ip = "IP"
        case title = "Title"
        case name = "Name"
        case arabicName = "ArabicName"
        case rate = "Rate"
        case about = "About"
        case arabicAbout = "ArabicAbout"
        case activated = "Activated"
        case userType = "UserType"
        case specialtyID = "SpecialtyId"
        case lastSyncDate = "LastSyncDate"
        case source = "Source"
        case isMale = "IsMale"
        case isSync = "IsSync"
        case licenseID = "LicenseId"
        case mobileNumber = "MobileNumber"
        case id = "Id"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case isDeleted = "IsDeleted"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : name ?? ""
    }
}

// MARK: - Specialty
struct Specialty: Codable {
    let englishName, arabicName: String?
    let code: String?
    let hasPromtion: String?
    let id: String?
    let creationDate, lastUpdateDate: String?
    let isDeleted: String?

    enum CodingKeys: String, CodingKey {
        case englishName = "EnglishName"
        case arabicName = "ArabicName"
        case code = "Code"
        case hasPromtion = "HasPromtion"
        case id = "Id"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case isDeleted = "IsDeleted"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}

// MARK: - Service
struct Service: Codable {
    let serviceID: String?
    let serviceNameEN, serviceNameAR: String?
    let serviceType: String?
    let price: String?

    enum CodingKeys: String, CodingKey {
        case serviceID = "serviceId"
        case serviceNameEN = "ServiceNameEN"
        case serviceNameAR = "ServiceNameAR"
        case serviceType
        case price = "Price"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? serviceNameAR ?? "" : serviceNameEN ?? ""
    }
}

// MARK: - Encode/decode helpers


