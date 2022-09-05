//
//  PHRdiseaseModelData.swift
//  Youmeda
//
//  Created by Khabeer on 1/23/21.
//

import Foundation
struct PHRdiseaseModelData: Codable {
    var data: DataClass?
    var success: String?
    var code: String?
    var englishMessage, arabicMessage: String?
    var currentPage, pageCount: String?
    var visitStatus: String?

    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case success = "Success"
        case code = "Code"
        case englishMessage = "EnglishMessage"
        case arabicMessage = "ArabicMessage"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
        case visitStatus = "VisitStatus"
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    var phrDisease: [PHRdiseaseModel]

    enum CodingKeys: String, CodingKey {
     
        case phrDisease = "PHR_Disease"
    }
}
import MOLH
// MARK: - PHRDisease
struct PHRdiseaseModel: Codable {
    var diseaseID: String?
    var arabicName, englishName: String?
    var fromNumber: String?
    var fromUnit: String?
    var isSelected: String?
    var FromUnitId: String?

    enum CodingKeys: String, CodingKey {
        case diseaseID = "DiseaseId"
        case arabicName = "ArabicName"
        case englishName = "EnglishName"
        case fromNumber = "From_Number"
        case fromUnit = "From_Unit"
        case isSelected = "IsSelected"
        case FromUnitId = "FromUnitId"
    }
    
    func getName() -> String {
        return MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}


struct PHR_Allergies: Codable {
 
var ArabicName:String?
var EnglishName:String?
var `Type`:String?
var id : String?
var AllergyId : String?
var code : String?
var code1 : String?
var anyBtnChecked : String?
var checkedOrNo : String?
var bufferStatues  : String?
var pages_count : String?

}





struct GET_PHR_SurgicalModel: Codable {
    var ArabicName:String?
    var EnglishName:String?
    var From_Number:String?
    var From_Unit:String?
    var Id:String?
    var CreationDate :String?

}


struct arrayToSaveAllergy {
    var AllergyId = 0
    var AllergyType = 0
    var Buffer_Status = 0
}


struct medicationPHRModel: Codable {
    var selectedMedicines: [SelectedMedicine]?
    var englishMessage: String?
    var isArabic: String?
    var code: String?
    var arabicMessage: String?
    var currentPage, pageCount: String?
    var complaints: [medicationPHRMComplaint]?
    var visitStatus: String?
    var success: String?

    enum CodingKeys: String, CodingKey {
        case selectedMedicines = "SelectedMedicines"
        case englishMessage = "EnglishMessage"
        case isArabic = "IsArabic"
        case code = "Code"
        case arabicMessage = "ArabicMessage"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
        case complaints
        case visitStatus = "VisitStatus"
        case success = "Success"
    }
}


struct OthersPHRModel: Codable {
    var selectedMedicines: [SelectedMedicine]?
    var englishMessage: String?
    var isArabic: String?
    var code: String?
    var arabicMessage: String?
    var currentPage, pageCount: String?
    var complaints: [othersPHRMComplaint]?
    var visitStatus: String?
    var success: String?

    enum CodingKeys: String, CodingKey {
        case selectedMedicines = "SelectedMedicines"
        case englishMessage = "EnglishMessage"
        case isArabic = "IsArabic"
        case code = "Code"
        case arabicMessage = "ArabicMessage"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
        case complaints
        case visitStatus = "VisitStatus"
        case success = "Success"
    }
}



// MARK: - Complaint
struct othersPHRMComplaint: Codable {
    var oldPrice, picURL: String?
    var isAlreadyChecked: String?
    var pagesCount: String?
    var complaintDescription: String?
    var indexCount: String?
    var englishName: String?
    var price: String?
    var code: String?
    var quantity: String?
    var specialtyId3: String?
    var arabicName, id: String?
    var specialtyId2: String?
    var isEnabled: String?
    var isSelected:String?
    var rnum: String?
    var specialtyID: String?
    var bufferStatues  = "1"


    enum CodingKeys: String, CodingKey {
        case oldPrice = "OldPrice"
        case picURL = "PicUrl"
        case isAlreadyChecked = "IsAlreadyChecked"
        case pagesCount = "pages_count"
        case complaintDescription = "Description"
        case indexCount
        case englishName = "EnglishName"
        case price = "Price"
        case code
        case quantity = "Quantity"
        case specialtyId3 = "SpecialtyId3"
        case arabicName = "ArabicName"
        case id = "id"
        case specialtyId2 = "SpecialtyId2"
        case isEnabled = "IsEnabled"
        case rnum
        case specialtyID = "SpecialtyId"
        case isSelected = "IsSelected"

    }
}


// MARK: - Complaint
struct medicationPHRMComplaint: Codable {
    var oldPrice, picURL: String?
    var isAlreadyChecked: String?
    var pagesCount: String?
    var complaintDescription: String?
    var indexCount: String?
    var englishName: String?
    var price: String?
    var code: String?
    var quantity: String?
    var specialtyId3: String?
    var arabicName, id: String?
    var specialtyId2: String?
    var isEnabled: String?
    var isSelected:String?
    var rnum: String?
    var specialtyID: String?
    var bufferStatues  = "1"
    var Selected_Ag: String?


    enum CodingKeys: String, CodingKey {
        case oldPrice = "OldPrice"
        case picURL = "PicUrl"
        case isAlreadyChecked = "IsAlreadyChecked"
        case pagesCount = "pages_count"
        case complaintDescription = "Description"
        case indexCount
        case englishName = "EnglishName"
        case price = "Price"
        case code
        case quantity = "Quantity"
        case specialtyId3 = "SpecialtyId3"
        case arabicName = "ArabicName"
        case id = "Id"
        case specialtyId2 = "SpecialtyId2"
        case isEnabled = "IsEnabled"
        case rnum
        case specialtyID = "SpecialtyId"
        case isSelected = "IsSelected"
        case Selected_Ag = "Selected_Ag"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}

// MARK: - SelectedMedicine
struct SelectedMedicine: Codable {
    var isEnabled: String?
    var code: String?
    var arabicName, englishName: String?
    var totalCount: String?
    var isSelected: String?
    var id: String?

    enum CodingKeys: String, CodingKey {
        case isEnabled = "IsEnabled"
        case code = "Code"
        case arabicName = "ArabicName"
        case englishName = "EnglishName"
        case totalCount = "TotalCount"
        case isSelected = "IsSelected"
        case id = "Id"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
}



struct OthersAllergy: Codable {
    var arabicMessage: String?
    var visitStatus: String?
    var success: String?
    var code: String?
    var data: dataClass
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
struct dataClass: Codable {
    var phrAllergies: [PHRAllergy]
    var patient, visitCompalints, phrMedications, phrSurgical: JSONNull?
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

// MARK: - PHRAllergy
struct PHRAllergy: Codable {
    var englishName, arabicName: String?
    var allergyID, type: String?
    var isChanged = "0"
    var isSelected = "1"
    var isEnabled = "1"
    

    enum CodingKeys: String, CodingKey {
        case englishName = "EnglishName"
        case arabicName = "ArabicName"
        case allergyID = "AllergyId"
        case type = "Type"
    }
}



struct VitalSigns: Codable {
    var currentPage: String?
    var arabicMessage, englishMessage: String
    var success: String?
    var isArabic: String?
    var code: String?
    var visitStatus: String?
    var pageCount: String?
    var data: VitalSignsData

    enum CodingKeys: String, CodingKey {
        case currentPage = "CurrentPage"
        case arabicMessage = "ArabicMessage"
        case englishMessage = "EnglishMessage"
        case success = "Success"
        case isArabic = "IsArabic"
        case code = "Code"
        case visitStatus = "VisitStatus"
        case pageCount = "PageCount"
        case data = "Data"
    }
}

// MARK: - DataClass
struct VitalSignsData: Codable {
    var patient, visitCompalints, phrMedications: String?
    var phrVital: PHRVital?
    var phrAttachment, phrAllergies, phrDisease, phrSurgical: String?

    enum CodingKeys: String, CodingKey {
        case patient = "Patient"
        case visitCompalints = "VisitCompalints"
        case phrMedications = "PHR_Medications"
        case phrVital = "PHR_Vital"
        case phrAttachment = "PHR_Attachment"
        case phrAllergies = "PHR_Allergies"
        case phrDisease = "PHR_Disease"
        case phrSurgical = "PHR_Surgical"
    }
}

// MARK: - PHRVital
struct PHRVital: Codable {
    var sCreatinine, pressure1, hr, tempreture: String?
    var weight: String?
    var rr, respiratoryRate, bSugar: String?
    var bmi: String?
    var height: String?
    var pressure2, saturation: String?
    var creationDate: String?

    enum CodingKeys: String, CodingKey {
        case sCreatinine = "SCreatinine"
        case pressure1 = "Pressure1"
        case hr = "HR"
        case tempreture = "Tempreture"
        case weight = "Weight"
        case rr = "RR"
        case respiratoryRate = "RespiratoryRate"
        case bSugar = "BSugar"
        case bmi = "BMI"
        case height = "Height"
        case pressure2 = "Pressure2"
        case saturation = "Saturation"
        case creationDate = "CreationDate"
    }
}


