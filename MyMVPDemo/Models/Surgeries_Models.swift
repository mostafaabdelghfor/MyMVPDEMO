//
//  Surgeries_Models.swift
//  Youmeda
//
//  Created by Khabeer on 2/8/21.
//



import Foundation
struct OperationsObj: Codable {
    var englishMessage: String?
    var isArabic, visitStatus: String?
    var arabicMessage: String?
    var code, pageCount: String?
    var success: String?
    var currentPage: String?
    var data: [OperationsData]

    enum CodingKeys: String, CodingKey {
        case englishMessage = "EnglishMessage"
        case isArabic = "IsArabic"
        case visitStatus = "VisitStatus"
        case arabicMessage = "ArabicMessage"
        case code = "Code"
        case pageCount = "PageCount"
        case success = "Success"
        case currentPage = "CurrentPage"
        case data = "Data"
    }
}
import MOLH
// MARK: - Datum
struct OperationsData: Codable {
    var arabicName: String?
    var gouvermentID: String?
    var englishName: String?
    var id: String?

    init() {
        arabicName = nil
        gouvermentID = nil
        englishName = nil
        id = nil
    }
    enum CodingKeys: String, CodingKey {
        case arabicName = "ArabicName"
        case gouvermentID = "GouvermentId"
        case englishName = "EnglishName"
        case id = "Id"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}




struct SurgeriesOBJ: Codable {
    var arabicMessage: String?
    var visitStatus: String?
    var success: String?
    var code: String?
    var data: SurgeriesdataClass?
    var pageCount, currentPage: String?
    var isArabic: String?
    var englishMessage: String

    enum CodingKeys: String, CodingKey {
        case arabicMessage = "ArabicMessage"
        case visitStatus = "VisitStatus"
        case success = "Success"
        case code = "Code"
        case data = "Data"
        case pageCount = "PageCount"
        case currentPage = "CurrentPage"
        case isArabic = "IsArabic"
        case englishMessage = "EnglishMessage"
    }
}

// MARK: - DataClass
struct SurgeriesdataClass: Codable {
    var phrAllergies: [PHRAllergy]?
    var patient, visitCompalints, phrMedications :JSONNull?
    var phrSurgical: [GET_PHR_SurgicalModel]
    var phrVital, phrDisease, phrAttachment: JSONNull?

    enum CodingKeys: String, CodingKey {
        case phrAllergies = "PHR_Allergies"
        case patient = "Patient"
        case visitCompalints = "VisitCompalints"
        case phrMedications = "PHR_Medications"
        case phrSurgical = "PHR_Surgical"
        case phrVital = "PHR_Vital"
        case phrDisease = "PHR_Disease"
        case phrAttachment = "PHR_Attachment"
    }
}
