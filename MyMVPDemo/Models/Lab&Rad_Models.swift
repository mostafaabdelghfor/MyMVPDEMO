//
//  Lab&Rad_Models.swift
//  Youmeda
//
//  Created by Khabeer on 2/8/21.
//

import Foundation
struct medicalInsuranceObj: Codable {
    let data: [medicalInsuranceData]?
    let EnglishMessage, ArabicMessage: String?
    let Success: String?
    let Code: String?
}

// MARK: - Datum
struct medicalInsuranceData: Codable {
    let value: String?
    let data: medicalInsuranceDataDataClass?
}

// MARK: - DataClass
struct medicalInsuranceDataDataClass: Codable {
    let lat, lng, category: String?
    let type: String?
    let id: String?
}

struct governmentsModel: Codable {
     
    var id:String?
    var ArabicName:String?
    var ArabicNamefilter:String?
    var EnglishName:String?
    var Lat:String?
    var Lng:String?
    var pages_count:String?
    var rnum:String?

    }



struct GetInvestigationsServicesObj: Codable{

    var PageCount:String?
    var Data:[GetInvestigationsServicesModel]?
}
import MOLH

struct GetInvestigationsServicesModel: Codable{

    var EnglishName:String?
    var ArabicName:String?
    var PricelistId:String?
    var ServiceId:String?
    var ClassId:String?
    var ClassFlag:String?
    var BranchId:String?
    var AccountId:String?
    var ClsArabicName:String?
    var ClsEnglishName:String?
    var Price:String?
    var OldPrice:String?
    var IsNeedAccept:String?
    var pagecounts:String?
    var Id:String?
    var CategoryEN:String?
    var NotSuportHome:String?

    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}


struct investigationsServicesModel: Codable {
    var Data: [investigationsServicesDataModel]?
    var Success: String?
    var Code: String?
    var EnglishMessage, ArabicMessage: String?
    var CurrentPage: String?
    var IsArabic: String?
    var PageCount: String?
    var VisitStatus: String?
    
    

}

// MARK: - Datum
class investigationsServicesDataModel: Codable {
    var EnglishName, ArabicName: String?
    var PricelistId, ServiceId: String?
    var ClassId, ClassFlag, BranchId, AccountId: String?
    var ClsArabicName, ClsEnglishName: String?
    var Price, OldPrice: String?
    var IsNeedAccept: String?
    var pagecounts, Id: String?
    var NotSuportHome: String?
    var selected: Bool?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}

import Foundation

// MARK: - Empty
struct LabspackageBigModel: Codable {
    let isArabic :String?
    let visitStatus :String?
    let arabicMessage: String?
    let accountsData: [AccountsDatum]?
    let englishMessage: String?
    let code: String?
    let success: String?
    let currentPage: String?
      let  pageCount: String?

    enum CodingKeys: String, CodingKey {
        case isArabic = "IsArabic"
        case visitStatus = "VisitStatus"
        case arabicMessage = "ArabicMessage"
        case accountsData = "AccountsData"
        case englishMessage = "EnglishMessage"
        case code = "Code"
        case success = "Success"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
    }
}

// MARK: - AccountsDatum
struct AccountsDatum: Codable {
    
    let serviceEnglishName: String?
    let accountEnglishName: String?
    let price, classFlag: String?
    let branchID: String?
    let branches: [LabspackageBigModelBranch]?
    let branchEnglishName:String?
    let   classID:String?
          
    let branchArabicName:String?
    let distanceKM: String?
    let accountID, pagecounts, serviceID, ratValue: String?
    let serviceArabicName: String?
    let accountArabicName: String?
    let oldPrice: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? accountArabicName ?? "" : accountEnglishName ?? ""
    }

    enum CodingKeys: String, CodingKey {

        case serviceEnglishName = "ServiceEnglishName"
        case accountEnglishName = "AccountEnglishName"
        case price = "Price"
        case classFlag = "ClassFlag"
        case branchID = "BranchId"
        case branches = "Branches"
        case branchEnglishName = "BranchEnglishName"
        case classID = "ClassId"
        case branchArabicName = "BranchArabicName"
        case distanceKM = "DistanceKM"
        case accountID = "AccountId"
        case pagecounts
        case serviceID = "ServiceId"
        case ratValue = "RatValue"
        case serviceArabicName = "ServiceArabicName"
        case accountArabicName = "AccountArabicName"
        case oldPrice = "OldPrice"
    }
}

// MARK: - Branch
struct LabspackageBigModelBranch: Codable {
    let serviceDetials: String?
    let branchAdressAr: String?
    let oldPrice, classeName, branchLat : String?
    let distanceKM: String?
    let price: String?
    let homeVisitPrice: String?
    let averageRating, ratingComment: String?
    let branchEnglishName: String?
    let phone: String?
    let branchArabicName: String?
    let numofSuuportIns, discount, specialties, licenceID: String?
    let branchAdressEN: String
    let servicecount: String?
    let branchID: String?
    let branchLng: String?

    enum CodingKeys: String, CodingKey {
        case serviceDetials = "ServiceDetials"
        case branchAdressAr = "BranchAdressAr"
        case oldPrice = "OldPrice"
        case classeName = "ClasseName"
        case branchLat = "BranchLat"
        case distanceKM = "DistanceKM"
        case price = "Price"
        case homeVisitPrice = "HomeVisitPrice"
        case averageRating = "AverageRating"
        case ratingComment = "RatingComment"
        case branchEnglishName = "BranchEnglishName"
        case phone = "Phone"
        case branchArabicName = "BranchArabicName"
        case numofSuuportIns = "NumofSuuportIns"
        case discount = "Discount"
        case specialties = "Specialties"
        case licenceID = "LicenceId"
        case branchAdressEN = "BranchAdressEN"
        case servicecount
        case branchID = "BranchId"
        case branchLng = "BranchLng"
    }
}







struct LabRadPackagesModel: Codable {
    var data: [LabRadPackageData]?
    var success: String?
    var code: String?
    var englishMessage, arabicMessage: String?
    var currentPage: String?
    var isArabic: String?
    var pageCount: String?
    var visitStatus: String?

    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case success = "Success"
        case code = "Code"
        case englishMessage = "EnglishMessage"
        case arabicMessage = "ArabicMessage"
        case currentPage = "CurrentPage"
        case isArabic = "IsArabic"
        case pageCount = "PageCount"
        case visitStatus = "VisitStatus"
    }
}

// MARK: - Datum
struct LabRadPackageData: Codable {
    var id: String?
    var arabicName, englishName, descriptionEN, descriptionAR: String?
    var price :String?
        
    var oldPrice:String?
    var discount: String?
    var ImageURL: String?
    var IsSpecial: String?
    var AccountType: String?
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case arabicName = "ArabicName"
        case englishName = "EnglishName"
        case descriptionEN = "DescriptionEN"
        case descriptionAR = "DescriptionAR"
        case price = "Price"
        case oldPrice = "OldPrice"
        case discount = "Discount"
        case ImageURL = "ImageURL"
        case IsSpecial = "IsSpecial"
        case AccountType = "AccountType"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? arabicName ?? "" : englishName ?? ""
    }
    
    func getDescription() -> String {
        MOLHLanguage.isArabic() ? descriptionAR ?? "" : descriptionEN ?? ""
    }
}



struct LabRadCenterDataObject: Codable {
    let arabicMessage: String?
    var data: LabRadCenterData?
    let success: String?
    let pageCount, currentPage: String?
    let serviceDetials: [ServiceDetial]
    let englishMessage: String?
    let code: String?
    let visitStatus: String?

    enum CodingKeys: String, CodingKey {
        case arabicMessage = "ArabicMessage"
        case data = "Data"
        case success = "Success"
        case pageCount = "PageCount"
        case currentPage = "CurrentPage"
        case serviceDetials = "ServiceDetials"
        case englishMessage = "EnglishMessage"
        case code = "Code"
        case visitStatus = "VisitStatus"
    }
}

// MARK: - DataClass
struct LabRadCenterData: Codable {

    let branchLat:String?
    let accountID:String?
    let AccountArabicName:String?
    let currentPage: String?
    let branchLng: String?
    let classFlag: String?
    let servicesID: String?
    let resultsPerPage: String?
    var centers: [LabRadDataCenter]?

    enum CodingKeys: String, CodingKey {

        case branchLat = "BranchLat"
        case accountID = "AccountId"
        case AccountArabicName = "AccountArabicName"
        case currentPage = "CurrentPage"
        case branchLng = "BranchLng"
        case classFlag = "ClassFlag"
        case servicesID = "ServicesId"
        case resultsPerPage = "ResultsPerPage"
        case centers = "Centers"
    }
}

// MARK: - Center
struct LabRadDataCenter: Codable {
    let branchEnglishName, branchArabicName:String?
    let oldPrice :String?
    let price: String?
    let classFlag: String?
    let branches: [LabRadCenterDataBranch]
    let accountID, serviceID: String?
    let accountEnglishName: String?
    let pagecounts:String?
    let distanceKM: String?
    let serviceArabicName: String?
    let accountArabicName: String?
    let serviceEnglishName:String?
    let classID: String?
    let branchID: String?
    var fromTarget: String?
    var RatValue: String?


    enum CodingKeys: String, CodingKey {
        case branchEnglishName = "BranchEnglishName"
        case branchArabicName = "BranchArabicName"
        case oldPrice = "OldPrice"
        case price = "Price"
        case classFlag = "ClassFlag"
        case branches = "Branches"
        case accountID = "AccountId"
        case serviceID = "ServiceId"
        case accountEnglishName = "AccountEnglishName"
        case pagecounts
        case distanceKM = "DistanceKM"
        case serviceArabicName = "ServiceArabicName"
        case accountArabicName = "AccountArabicName"
        case serviceEnglishName = "ServiceEnglishName"
        case classID = "ClassId"
        case branchID = "BranchId"
        case RatValue = "RatValue"

    }
}

// MARK: - Branch
struct LabRadCenterDataBranch: Codable {
    let price: String?
    let branchID: String?
    let branchArabicName: String?
    let phone, licenceID: String?
    let branchAdressAr: String?
    let serviceDetials: [ServiceDetial]?
    let branchLat: String?
    let branchEnglishName: String?
    let distanceKM, numofSuuportIns: String?
    let discount: String?
    let classeName: String?
    let branchLng: String?
    let branchAdressEN: String?
    let servicecount: String?
    let oldPrice:String?
    let homeVisitPrice: String?

    enum CodingKeys: String, CodingKey {
        case price = "Price"
        case branchID = "BranchId"
        case branchArabicName = "BranchArabicName"
        case phone = "Phone"
        case licenceID = "LicenceId"
        case branchAdressAr = "BranchAdressAr"
        case serviceDetials = "ServiceDetials"
        case branchLat = "BranchLat"
        case branchEnglishName = "BranchEnglishName"
        case distanceKM = "DistanceKM"
        case discount = "Discount"
        case numofSuuportIns = "NumofSuuportIns"
        case classeName = "ClasseName"
        case branchLng = "BranchLng"
        case branchAdressEN = "BranchAdressEN"
        case servicecount
        case oldPrice = "OldPrice"
        case homeVisitPrice = "HomeVisitPrice"
    }
}

// MARK: - ServiceDetial
struct ServiceDetial: Codable {
    let oldPrice: String?
    let serviceARName, isExixt ,serviceENName: String?
    let price:String?
    let isSupport: String?
    let ServiceId: String?


    enum CodingKeys: String, CodingKey {
        case oldPrice = "OldPrice"
        case serviceARName = "ServiceARName"
        case serviceENName = "ServiceENName"
        case price = "Price"
        case isSupport = "IsSupport"
        case ServiceId = "ServiceId"
        case isExixt


    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? serviceARName ?? "" : serviceENName ?? ""
    }
}


struct GetBranch_Profile_InfoModel: Codable {
    let currentPage, pageCount: String?
    let visitStatus: String?
    let code: String?
    let englishMessage: String?
    let data: [GetBranch_Profile_InfoModelData]?
    let arabicMessage: String?
    let success: String?

    enum CodingKeys: String, CodingKey {
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
        case visitStatus = "VisitStatus"
        case code = "Code"
        case englishMessage = "EnglishMessage"
        case data = "Data"
        case arabicMessage = "ArabicMessage"
        case success = "Success"
    }
}

// MARK: - Datum
struct GetBranch_Profile_InfoModelData: Codable {
    let equipmentAR, supervisorAR, supervisorEN: String?
    let infoType :String?
    let image : String?
    let id : String?
    let equipmentEN: String?

    enum CodingKeys: String, CodingKey {
        case equipmentAR = "EquipmentAR"
        case supervisorAR = "SupervisorAR"
        case supervisorEN = "SupervisorEN"
        case infoType = "InfoType"
        case image = "image"
        case id = "Id"
        case equipmentEN = "EquipmentEN"
        
        
    }
}

class LabRadDetailsBranchesRateResponseModel: Codable {
    
    let Branches: [LabRadBranchData]?
    let ClassesData: [LabRadClassesData]?
}

class LabRadClassesData: Codable {
    let Id: String?
    let ArabicName: String?
    let EnglishName: String?
    let IsSelectedClass: String?
//    let IsCash: Bool?
}

class LabRadBranchData: Codable {
    
    let AverageRating: String?
    let BranchAdressAr: String?
    let BranchAdressEN: String?
    let BranchArabicName: String?
    let BranchEnglishName: String?
    let BranchId: String?
    let BranchLat: String?
    let BranchLng: String?
    let Phone: String?
    let RatingComment: String?
    let _OnlineRates: [LabRadRate]?
}

class LabRadRate: Codable {
    
    let Rate: String?
    let FirstNameAr: String?
    let Comment: String?
    let RequestDate: String?
}



class LabRadDetailsNotificationsResponseModel: Codable {
    
    var Data: [LabRadDetailsNotificationModel]?
}

class LabRadDetailsNotificationModel: Codable {
    let ServiceEn: String?
    let ServiceAr: String?
    let ServiceId: String?

    let Alerts: [LabRadDetailsNotificationAlertModel]?
    var selected: String?
    var open: String? = "false"
}

class LabRadDetailsNotificationAlertModel: Codable {
    var ArName: String?
    var EnName: String?
}


struct LabRadChangeReserveDate {
    var RequestDate = ""
    var OnlineRequestId = 0
    var LabType = ""
}

struct otherPersonsModel: Codable{
    var OnlinePatient: String?
    var OnlinePatientId: String?
    var Name: String?
    var Phone: String?
    var Id: String?
    var CreationDate: String?
    var LastUpdateDate: String?
    var IsDeleted : String?
}

struct getCenterBranchSlots: Codable{
   var Data:[CenterBranchSlotsObj]?
}

struct CenterBranchSlotsObj: Codable{
   var Day:String?
   var DupNum:String?
   var FromTime:String?
   var ToTime:String?
}


struct ServiceExistModel: Codable {
    let sumold, sumNew: String?
    let isExixt: String?
    let ArabicName: String?
    let _ServiceDetials: [ServiceDetial]?
    let Success: String?
    let Code: String?
    let EnglishMessage, ArabicMessage: String?
    let CurrentPage: String?
    let IsArabic: String?
    let PageCount: String?
    let VisitStatus: String?
    let HomeVistCharge: String?
    let TotalPrice: String?

}



import Foundation

// MARK: - Empty
struct PsychiatricModel: Codable {
    let isArabic :String?
    let visitStatus :String?
    let arabicMessage: String?
    let accountsData: [PsychiatricModeldata]?
    let englishMessage: String?
    let code: String?
    let success: String?
    let currentPage: String?
    let  pageCount: String?
    


    enum CodingKeys: String, CodingKey {
        case isArabic = "IsArabic"
        case visitStatus = "VisitStatus"
        case arabicMessage = "ArabicMessage"
        case accountsData = "Data"
        case englishMessage = "EnglishMessage"
        case code = "Code"
        case success = "Success"
        case currentPage = "CurrentPage"
        case pageCount = "PageCount"
    }
}

struct PsychiatricModeldata: Codable {
    
    let ArabicName: String?
    let EnglishName: String?
    let SubSpecialityId: String?
    let Id: String?

    enum CodingKeys: String, CodingKey {
        case ArabicName = "ArabicName"
        case EnglishName = "EnglishName"
        case SubSpecialityId = "SubSpecialityId"
        case Id = "Id"
    }
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}

