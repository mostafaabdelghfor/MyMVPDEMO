//
//  PackageDetailsModel.swift
//  Youmeda
//
//  Created by MAC on 28/07/2021.
//

import Foundation

struct PackageDetailsModel: Codable {
    let EnglishMessage, ArabicMessage: String?
    let Success: String?
    let Code: String?
    let VisitStatus: String?
    var _MasterPackeDetails: _MasterPackeDetailsModel?

    enum CodingKeys: String, CodingKey {
        case EnglishMessage = "EnglishMessage"
        case ArabicMessage = "ArabicMessage"
        case Code = "Code"
        case Success = "Success"
        case VisitStatus = "VisitStatus"
        case _MasterPackeDetails = "_MasterPackeDetails"
    }
    
}


struct _MasterPackeDetailsModel :Codable{
    var _LabRadPackages : _LabRadPackages?
    var _LabRadPackesReqServices :[_LabRadPackesReqServices]?

    
    
    enum CodingKeys: String, CodingKey {
        case _LabRadPackages = "_LabRadPackages"
        case _LabRadPackesReqServices = "_LabRadPackesReqServices"

    }
    

}
struct _LabRadPackages :Codable{

    
    let ArabicName, DescriptionAR: String?
    let DescriptionEN, Discount: String?
    let EnglishName, OldPrice: String?
    let Price, id: String?
    enum CodingKeys: String, CodingKey {
        case ArabicName = "ArabicName"
        case DescriptionAR = "DescriptionAR"
        case DescriptionEN = "DescriptionEN"
        case Discount = "Discount"
        case EnglishName = "EnglishName"
        case OldPrice = "OldPrice"
        case Price = "Price"
        case id = "id"

      
    }
    
    
}

struct _LabRadPackesReqServices :Codable{
    
    let ArabicName, EnglishName,Id: String?
    let LabServiceId, Price: String?
    let Discount, PackageId: String?
    let  RadServiceId: String?
    enum CodingKeys: String, CodingKey {
        case ArabicName = "ArabicName"
        case EnglishName = "EnglishName"
        case Id = "Id"
        case LabServiceId = "LabServiceId"
        case Price = "DescriptionAR"
        case Discount = "Discount"
        case PackageId = "PackageId"
        case RadServiceId = "RadServiceId"

      
    }
    
    
}




