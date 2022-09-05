//
//  operations_Model.swift
//  Youmeda
//
//  Created by Khabeer on 3/8/21.
//


import Foundation
import MOLH

struct operationSection{
    var title : String
    var items :[operation]
    var show : Bool
    init(title: String , items:[operation] , show:Bool) {
        self.title = title
        self.items = items
        self.show = show
    }
}

struct operationsModel:  Codable{
    var Data :[operation]?
}

struct operation:Codable , Hashable , Equatable{
    var GouvermentId:String?
    var ArabicName:String?
    var EnglishName:String?
    var Id:String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}



struct OpertionsHospitalsModel:  Codable{
    var Data :[OpertionsHospitals]?
}

class OpertionsHospitals:  Codable{
    
    var AccountHeaderId:String?
    var OperationId:String?
    var PackageId:String?
    var AccountId:String = "0"
    var SpecialityName:String?
    var OperationName:String?
    var PackageName:String?
    var AccountName:String?
    var AccountNameEn:String?
    var open:String?
    var AccountBranches:[AccountBranches]?
    var PackageItems:[PackageItems]?
    var PricesList:String?
    var SupportInsurance:String?
    var ShowBranchesFlag :String?
    var Iselected:String?
    var isSelected: Bool?

    func getName() -> String {
        MOLHLanguage.isArabic() ? AccountName ?? "" : AccountNameEn ?? ""
    }
}

struct AccountBranches:  Codable{
    
    var Id:String?
    var AccountId:String?
    var EnglishName:String?
    var ArabicName:String?
    var BranchLat:String?
    var BranchLng:String?
    var AddressAr:String?
    var AddressEn:String?
    var CityId:String?
    var GouvnermentId:String?
    var Phone:String?
    var LicenseId:String?
    var selected: Bool?

    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
    
    func getAddress() -> String {
        MOLHLanguage.isArabic() ? AddressAr ?? "" : AddressEn ?? ""
    }
}

struct PackageItems:  Codable{
    
    var ClassId:String?
    var ItemId:String?
    var ItemName:String?
    var ItemNameEN: String?
    var MaxValue:String?
    var NeedApproval:String?
    var IsInclude:String?
    var sort:String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ItemName ?? "" : ItemNameEN ?? ""
    }
 }


class displayComparedHospitalsModel {
    
    var hospitalName:String?
    var operationName:String?
    var hosipitalPrice:String?
    var hosiptalId:String?
    var insurance:String?
    
    init(hospitalName: String , operationName:String , hosipitalPrice:String ,hosiptalId:String ,insurance:String  ) {
        self.hospitalName = hospitalName
        self.operationName = operationName
        self.hosipitalPrice = hosipitalPrice
        self.hosiptalId = hosiptalId
        self.insurance = insurance
    }
}



struct newStructureOfComparedHospitals {
    
    var AccountName:String?
    var AccountBranches:[AccountBranches]?
    var PricesList:Float?
    var SupportInsurance:Bool?
    var packageItemObject:PackageItem?
}


struct ComparedHospitalsOBJ: Codable {
    let Data: DataClassObj?
    let Success: String?
    let Code: String?
    let EnglishMessage, ArabicMessage: String?
    let CurrentPage: String?
    let IsArabic: String?
    let PageCount: String?
    let VisitStatus: String?
}

struct DataClassObj: Codable {
    let AccountPackage: [AccountPackage]?
    let PackageItems: [PackageItem]?
}

struct AccountPackage: Codable {
    let IsDeleted: String
    let AccountHeaderId, OperationId, PackageId, AccountId: String?
    let SpecialityName, OperationName, PackageName, AccountName: String?
    let AccountNameEn: String?
    let AccountBranches: [AccountBranch]?
    let PackageItems: [PackageItem]?
    let PricesList: String?
    let PatientClass: String?
    let SupportInsurance: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? AccountName ?? "" : AccountNameEn ?? ""
    }
}

struct AccountBranch: Codable {
    let Id, AccountId: String?
    let EnglishName, ArabicName: String?
    let BranchLat, BranchLng: String?
    let AddressAr, AddressEn: String?
    let CityId, GouvnermentId: String?
    let Phone: String?
    let LicenseId: String?

    func getName() -> String {
        MOLHLanguage.isArabic() ? AddressAr ?? "" : AddressEn ?? ""
    }
}

struct PackageItem: Codable {
    let ClassId, ItemId: String?
    let ItemName, ItemNameEN: String?
    let MaxValue: String?
    let NeedApproval: String?
    let IsInclude: String?
    let sort: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ItemName ?? "" : ItemNameEN ?? ""
    }
}

