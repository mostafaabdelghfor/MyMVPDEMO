//
//  AddressNursing.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation



struct GetICUCronicDiseasesModel: Codable {
    let data: [Datum]
    let arabicMessage, englishMessage: String
    let currentPage, pageCount: String
    let success: String
    let code: String

    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case arabicMessage = "ArabicMessage"
        case englishMessage = "EnglishMessage"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
        case success = "Success"
        case code = "Code"
    }
}

// MARK: - Datum
struct Datum: Codable {
    let arabicName, englishName: String
    let id: String

    enum CodingKeys: String, CodingKey {
        case arabicName = "ArabicName"
        case englishName = "EnglishName"
        case id = "Id"
    }
}

// MARK: - Empty
struct patient_Addresses: Codable {
    let data: [Datum1]
    let success: String
    let code: String
    let englishMessage, arabicMessage: String
    let currentPage, pageCount: String

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

// MARK: - Datum
class Datum1: Codable {
    let onlinePatient: OnlinePatient?
    let onlinePatientID: String
    let address: String?
    let buildingNumber, floorNumber, unitNumber: String?
    let streetName: String?
    let specialMarker: String?
    let lat, lng: String?
    let govID, districtID: String?
    let theLatest: String?
    let id: String?
    let creationDate, lastUpdateDate: String?
    let isDeleted: String?
    let DistrictNameAr: String?
    let DistrictNameEn: String?
    let GouvNameAr: String?
    let GouvNameEn: String?
    
    var selected: Bool?

    enum CodingKeys: String, CodingKey {
        case onlinePatient = "OnlinePatient"
        case onlinePatientID = "OnlinePatientId"
        case address = "Address"
        case buildingNumber = "BuildingNumber"
        case floorNumber = "FloorNumber"
        case unitNumber = "UnitNumber"
        case streetName = "StreetName"
        case specialMarker = "SpecialMarker"
        case lat = "Lat"
        case lng = "Lng"
        case govID = "GovId"
        case districtID = "DistrictId"
        case theLatest = "TheLatest"
        case id = "Id"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case isDeleted = "IsDeleted"
        case DistrictNameAr = "DistrictNameAr"
        case DistrictNameEn = "DistrictNameEn"
        case GouvNameAr = "GouvNameAr"
        case GouvNameEn = "GouvNameEn"
    }
    
    func getAddressDetails() -> String {
        "\(buildingNumber ?? ""), \(address ?? "")"
    }
}

// MARK: - OnlinePatient
struct OnlinePatient: Codable {
    let watchSerial: String?
    let firstNameAr, lastNameAr, firstNameEn, lastNameEn: String?
    let mobileNumber, email: String?
    let socialKey: String?
    let socialType: String?
    let gender: String?
    let birthDate, patientImage: String?
    let isSync, hasInsurance: String?
    let classID, id: String?
    let creationDate, lastUpdateDate: String?
    let isDeleted: String?

    enum CodingKeys: String, CodingKey {
        case watchSerial = "WatchSerial"
        case firstNameAr = "FirstNameAr"
        case lastNameAr = "LastNameAr"
        case firstNameEn = "FirstNameEn"
        case lastNameEn = "LastNameEn"
        case mobileNumber = "MobileNumber"
        case email = "Email"
        case socialKey = "SocialKey"
        case socialType = "SocialType"
        case gender = "Gender"
        case birthDate = "BirthDate"
        case patientImage = "PatientImage"
        case isSync = "IsSync"
        case hasInsurance = "HasInsurance"
        case classID = "ClassId"
        case id = "Id"
        case creationDate = "CreationDate"
        case lastUpdateDate = "LastUpdateDate"
        case isDeleted = "IsDeleted"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
