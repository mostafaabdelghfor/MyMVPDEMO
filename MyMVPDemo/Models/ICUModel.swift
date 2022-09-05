//
//  ICUModel.swift
//  Youmeda
//
//  Created by mostafa gabry on 2/24/21.
//

import Foundation
struct ICUModel: Codable {
    let IcuType: [ICUModelDatum]?
    let englishMessage, arabicMessage: String?
    let success: String?
    let code: String?

    enum CodingKeys: String, CodingKey {
        case IcuType = "IcuType"
        case englishMessage = "EnglishMessage"
        case arabicMessage = "ArabicMessage"
        case success = "Success"
        case code = "Code"
    }
}

// MARK: - Datum
//struct ICUModelDatum: Codable {
//    let englishName, arabicName: String?
//    let isActive: String
//    let id: String
//    let creationDate, lastUpdateDate: String?
//    let isDeleted: String
//
//    enum CodingKeys: String, CodingKey {
//        case englishName = "EnglishName"
//        case arabicName = "ArabicName"
//        case isActive = "IsActive"
//        case id = "Id"
//        case creationDate = "CreationDate"
//        case lastUpdateDate = "LastUpdateDate"
//        case isDeleted = "IsDeleted"
//    }
//}
import MOLH

struct IcuRe: Codable {
    let accountNameEN, accountNameAN: String?
    let accountID: String?
    let brancheEN, brancheAR: String?
    let brancheID: String?
    let branchLat, branchLng, addressAr: String?
    let distanceKM: String?
    let addressEn: String?
    let   price, averageRating: String?
    
    let  icuTypeID :String
    let id :String
    let isActive, classFlag: String?
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? accountNameAN ?? "" : accountNameEN ?? ""
    }
    
    func getAddress() -> String {
        return MOLHLanguage.isArabic() ? addressAr ?? "" : addressEn ?? ""
    }

    enum CodingKeys: String, CodingKey {
        case accountNameEN = "AccountNameEN"
        case accountNameAN = "AccountNameAN"
        case accountID = "AccountId"
        case brancheEN = "BrancheEN"
        case brancheAR = "BrancheAR"
        case brancheID = "BrancheID"
        case branchLat = "BranchLat"
        case branchLng = "BranchLng"
        case addressAr = "AddressAr"
        case distanceKM = "DistanceKM"
        case addressEn = "AddressEn"
        case id = "Id"
        case icuTypeID = "IcuTypeId"
        case price = "Price"
        case averageRating = "AverageRating"
        case isActive = "IsActive"
        case classFlag = "ClassFlag"
    }
}


struct icuHospitals: Codable {
    let data: icuHospitalsData
    let success: String?
    let code: String?
    let englishMessage, arabicMessage: String?
    let currentPage, pageCount: String?

    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case success = "Success"
        case code = "Code"
        case englishMessage = "EnglishMessage"
        case arabicMessage = "ArabicMessage"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
    }
}

// MARK: - DataClass
struct icuHospitalsData: Codable {
    let icuRes: [IcuRe]?
    let resultsPerPage: String
    let servicesID: String?
    let classID: String?
    let branchLat, branchLng, classFlag: String?
    let currentPage: String?

    enum CodingKeys: String, CodingKey {
        case icuRes = "IcuRes"
        case resultsPerPage = "ResultsPerPage"
        case servicesID = "ServicesId"
        case classID = "ClassId"
        case branchLat = "BranchLat"
        case branchLng = "BranchLng"
        case classFlag = "ClassFlag"
        case currentPage = "CurrentPage"
    }
}
