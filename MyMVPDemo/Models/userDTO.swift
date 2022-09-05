//
//  userDTO.swift
//  careMatePatient
//
//  Created by khabeer on 4/18/20.
//  Copyright © 2020 khabeer. All rights reserved.
//
import Foundation
import MOLH

struct userSaved:Codable {
    var Phone:String?
    var name:String?
    var OnlinePatientId:String?
    var ClassId:String?
    var HasInsurance:String?
    var Email:String?
    var gender :String?
    var BirthDate :String?
    var image :String?
    var ClassNameAr:String?
    var ClassNameEn:String?
    var id:String?
    
    func getClassName() -> String {
        MOLHLanguage.isArabic() ? ClassNameAr ?? "" : ClassNameEn ?? ""
    }
}

struct UserDTO: Codable {
    var UserType: String?
    var Activation: String?
    var Token: String?
    var UserRole, AccountRole: String?
    var user: User?
    var Success: String?
    var Code: String?
    var EnglishMessage, ArabicMessage: String?
    var CurrentPage: String?
    var IsArabic: String?
    var PageCount: String?
    var VisitStatus: String?

}

class User: Codable {
     
    var AspNetUsersId:String?
    var ClassId :String?
    var PhoneNumberConfirmed :String?
    var PatientImage:String?
    var Gender :String?
    var api_token :String?
    var Id:String?
    var Name:String?
    var Email:String?
    var Phone:String?
    var password:String?
    var BirthDate:String?
    var MobileNumber:String?
    var LastNameAr:String?
    var LastNameEn:String?
    var HasInsurance :String?
    var FirstNameAr :String?
    var FirstNameEn :String?
    var LicenseNumber:String?
    var Source :String?
    var ClassEnglishName :String?
    var ClassArabicName:String?

    
}





class complainsSearchDoctorModel:Codable {
     
    var id :Int?
    var code :Int?
    var ArabicName:String?
    var EnglishName:String?
    var SpecialtyId:Int?
    var SpecialtyId2:Int?
    var SpecialtyId3:Int?
    var pages_count:Int?
    var rnum: Int?
    
    }




