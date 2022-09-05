//
//  LabRadCategories.swift
//  Youmeda
//
//  Created by MAC on 18/07/2021.
//

import Foundation



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct LabsCategoriesBigModel: Codable {
    let arabicMessage: String?
    let code, currentPage: String?
    let data: [LabsCategoriesBigModelDatum]?
    let englishMessage, isArabic: String?
    let pageCount, success: String?
    let visitStatus: String?

    enum CodingKeys: String, CodingKey {
        case arabicMessage = "ArabicMessage"
        case code = "Code"
        case currentPage = "CurrentPage"
        case data = "Data"
        case englishMessage = "EnglishMessage"
        case isArabic = "IsArabic"
        case pageCount = "PageCount"
        case success = "Success"
        case visitStatus = "VisitStatus"
    }
}

// MARK: - Datum
struct LabsCategoriesBigModelDatum: Codable {
    let arabicNameU0627, creationDate, englishName: String?
    let id, isDeleted: String?
    let lastUpdateDate: String?

    enum CodingKeys: String, CodingKey {
        case arabicNameU0627 = "ArabicName"
        case creationDate = "CreationDate"
        case englishName = "EnglishName"
        case id = "Id"
        case isDeleted = "IsDeleted"
        case lastUpdateDate = "LastUpdateDate"
    }
}
