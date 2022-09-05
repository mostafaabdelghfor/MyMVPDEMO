//
//  Lab&Rad.swift
//  Youmeda
//
//  Created by Khabeer on 2/7/21.
//

import Foundation

class LabRadUrl{
    static let instance = LabRadUrl()
    private init () {}
    fileprivate let LabRad_BASE_URL = "\(BASE_URL)Salamtak/"
    fileprivate let APIBaseURLInvestigations = "\(BASE_URL)Investigations/"
    fileprivate let APIBaseURLPrivateHospitals = "\(BASE_URL)PrivateHospitals/"
    
    #if DEBUG
    
    let LAB_RAD_IMAGES = "http://40.127.194.127:55/ImgUploads/Accounts_Imgs/"
    let LAB_RAD_IMAGES_categories = "http://40.127.194.127:1278/Content/Design/img//home-phr/lab/"
    let LAB_RAD_IMAGES_DETAILS = "http://40.127.194.127:55/Uploads/InvestigationsResult/"
    let LAB_RAD_PACKAGES_IMAGE = "http://40.127.194.127:55/ImgUploads/Packges/"
    
    #else
    let LAB_RAD_IMAGES_categories = "https://youmeda.com/Content/Design/img/home-phr/lab/"
    let LAB_RAD_IMAGES = "https://youmeda.com/Providers/ImgUploads/Accounts_Imgs/"
    let LAB_RAD_IMAGES_DETAILS = "http://40.127.194.127:8888/Uploads/InvestigationsResult/"
    let LAB_RAD_PACKAGES_IMAGE = "http://40.127.194.127:8888/ImgUploads/Packges/"
    #endif
    
    func getMedicalInsuranceURL() -> String {
        return "\(LabRad_BASE_URL)GetMedicalInsurance"
    }
    
    func getInvestigationsServices() -> String {
        return "\(APIBaseURLInvestigations)GetInvestigationsServices"
    }
    
    func getInvestigationsLabsAccounts() -> String {
        return "\(APIBaseURLInvestigations)GetInvestigationsLabsAccounts"
    }
    
    func GetLabCategories() -> String {
        return "\(APIBaseURLInvestigations)GetLabCategories"
    }
    func GetPackageDetails() -> String {
        return "\(APIBaseURLInvestigations)GetPackageDetails"
    }
    
    
    func getLabRadPackages() -> String {
        return "\(APIBaseURLInvestigations)GetPromtionsPackeges"
    }
    
    func GetInvetigationOrders() -> String {
        return "\(APIBaseURLInvestigations)GetInvetigationOrders"
    }
    func LabRadCancelRequest() -> String {
        return "\(APIBaseURLInvestigations)LabRadCancelRequest"
    }
    
    func getSaveLabRadPrecriptionURL() -> String {
        return "\(APIBaseURLInvestigations)SaveLabRadPrecription"
    }
    
    func getInvestigationsCentersURL() -> String {
        return "\(APIBaseURLInvestigations)GetInvestigationsCenters"
    }
    
    func getBranch_Profile_InfoURL() -> String {
        return "\(APIBaseURLPrivateHospitals)GetBranch_Profile_Info"
    }
    
    func getLabRadAccountProfileURL() -> String {
        return "\(APIBaseURLInvestigations)GetLabRadAccountProfile"
    }
    
    func getLabRadSecurityAlertsURL() -> String {
        return "\(APIBaseURLInvestigations)getServicesAlerts"
    }
    
    func getOthersURL() -> String {
        return "\(LabRad_BASE_URL)getOthers"
    }
    
    func getBranchSlotsURL() -> String {
        return "\(APIBaseURLInvestigations)GetBranchSlot"
    }
    
    func getSubmitNewOnlineRequestURL() -> String {
        return "\(APIBaseURLInvestigations)SubmitNewOnlineRequest"
    }
        
    func getGenerateOtherCodeURL() -> String {
        return "\(LabRad_BASE_URL)GenerateOtherCode"
    }
    
    func getAddOtherURL() -> String {
        return "\(LabRad_BASE_URL)AddOther"
    }
    func getCoronaLabRad(_ isLab: String = "") -> String {
        return "\(APIBaseURLInvestigations)GetCovidLabRadServices?isLab=\(isLab)"
    }
    
    func getCheckServiceExistURL() ->String{
        return "\(APIBaseURLInvestigations)CheckServiceExist"
    }
    
    func getLabRadRateURL() ->String{
        return "\(APIBaseURLInvestigations)LabRadRate"
    }
    func getLabRadCancelURL() ->String{
        return "\(APIBaseURLInvestigations)LabRadCancelRequest"
    }
    func getChangeReservationDateURL() ->String{
        return "\(APIBaseURLInvestigations)LabRadChangeReserveDate"
    }
    func getBranches() -> String {
        return "\(APIBaseURLInvestigations)GetLabRadAccounts"
    }
    func getServicesDetails() -> String {
        return "\(APIBaseURLInvestigations)InvestigationsServicesDetials"
    }
}
