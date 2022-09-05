//
//  WalletUr.swift
//  Youmeda
//
//  Created by Khabeer on 1/13/21.
//

import Foundation

class SalamtakUrl {
    
    static let instance = SalamtakUrl()
    private init () {}
    
    fileprivate let SALAMTAK_BASE_URL = "\(BASE_URL)Salamtak/"
    
    #if DEBUG
        let SALAMTAK_BASE_PROMOTION = "http://40.127.194.127:55//ImgUploads/PromtionsImages/"
        let SALAMTAK_BASE_IMAGE_URL = "http://40.127.194.127:777/Uploads/UserImg/"
        let SALAMTAK_BASE_IMAGE_URL_2 = "http://40.127.194.127:5656/Providers/ImgUploads/DoctorsImages/"
        let SALAMTAK_BASE_IMAGE_URL_3 = "http://40.127.194.127:777/Uploads/Logo/"
    #else
        let SALAMTAK_BASE_PROMOTION = "http://40.127.194.127:8888//ImgUploads/PromtionsImages/"
        let SALAMTAK_BASE_IMAGE_URL = "https://doctor.clinivisor.net/Uploads/UserImg/"
        let SALAMTAK_BASE_IMAGE_URL_2 = "https://youmeda.com/api/Providers/ImgUploads/DoctorsImages/"
        let SALAMTAK_BASE_IMAGE_URL_3 = "https://doctor.clinivisor.net/Uploads/Logo/"
    
//    let SALAMTAK_BASE_PROMOTION = "http://40.127.194.127:55//ImgUploads/PromtionsImages/"
//    let SALAMTAK_BASE_IMAGE_URL = "http://40.127.194.127:777/Uploads/UserImg/"
//    let SALAMTAK_BASE_IMAGE_URL_2 = "http://40.127.194.127:5656/Providers/ImgUploads/DoctorsImages/"
//    let SALAMTAK_BASE_IMAGE_URL_3 = "http://40.127.194.127:777/Uploads/Logo/"
    #endif
    
    fileprivate let Clinivisor_BASE_URL = "\(BASE_URL)Clinivisor/"

    func getWalletURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetPatientWallet"
    }
    
    func MyClinicAppointments() -> String{
        
        return "\(SALAMTAK_BASE_URL)MyClinicAppointments"

    }
    func cancelAppointment() -> String{
        
        
        return "\(Clinivisor_BASE_URL)Clinic_Cancel_Request"

    }
    
    func getDoctorsURL() -> String {
        return "\(SALAMTAK_BASE_URL)SearchByKey"
    }
    func SmartSearch() -> String {
        return "\(SALAMTAK_BASE_URL)SmartSearch"
    }
    
    func GetDoctorRate() -> String {
        return "\(SALAMTAK_BASE_URL)GetDoctorRate"
    }
    
    func getMedicalInsuranceURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetMedicalInsurance"
    }
    
    func getGovernoratesURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetGouvernements"
    }
    
    func getGovernorateCitiesURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetCitiesById"
    }
    
    func getComplaintsURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetComplaints"
    }
    
    func getSplcialitiesURL() -> String {
        return "\(SALAMTAK_BASE_URL)getAllSpecialties"
    }
    
    func getSubSplcialitiesURL() -> String {
        return "\(SALAMTAK_BASE_URL)getSubSpecialties"
    }
    
    func getSmartSearchURL() -> String {
        return "\(SALAMTAK_BASE_URL)SmartSearch"
    }
    
    func getFirstAvailableSlotURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetFirstAvailableSlot"
    }
    
    func getDoctorSlotsURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetAvailableSlots"
    }
    
    func getBookAppointmentInClinicURL() -> String {
        return "\(SALAMTAK_BASE_URL)BookAppointmentInClinic"
    }
    
    func getVideoCallRemainingMinutesURL() -> String {
        return "\(SALAMTAK_BASE_URL)GetVideoCallRemainingMinutes"
    }
    
    func geMakeFavoriteURL() -> String {
        return "\(SALAMTAK_BASE_URL)ChangeDoctorFavorite"
    }
    func SendJoinRequest() -> String {
        return "\(SALAMTAK_BASE_URL)SendJoinRequest"
    }
    
    func Get_Promotion() -> String {
        return "\(SALAMTAK_BASE_URL)Get_Promotion"
    }
    
    
    func GetICUTypes() -> String {
        return "\(SALAMTAK_BASE_URL)GetIcu"
    }
    func getPrivateHospital() -> String {
        return "\(SALAMTAK_BASE_URL)GetPrivateHospitals"
    }
    
    func ICUSearchResult() -> String {
        return BASE_URL + "PrivateHospitals/ICUSearchResult"
    }
    func uploadFile() -> String {
        return BASE_URL + "PrivateHospitals/UploadMedicalReport"
    }
    func getICUChronicDieses() -> String {
        return BASE_URL + "PrivateHospitals/GetICUCronicDiseases"
    }
    func getICUAppointments() -> String {
        return BASE_URL + "ICU/ICUAppointments"
    }
    func getPatientOperations() -> String {
        return BASE_URL + "PrivateHospitals/GetPatientOperations"
    }
    func cancelICUAppointments(_ id: String) -> String {
        return BASE_URL + "ICU/CancelRequest?RequestId=\(id)"
    }
    func acceptICUAppointments() -> String {
        return BASE_URL + "ICU/UpdateRequestStatus"
    }
    func cancelOperationAppointments() -> String {
        return BASE_URL + "Operations/ChangeRequestStatus"
    }
    func getHospitalBranches() -> String {
        return "\(SALAMTAK_BASE_URL)GetPrivateHospitalsBranchesData"
    }
    func getHospitalDoctors() -> String {
        return "\(SALAMTAK_BASE_URL)GetDoctorInfo"
    }
    
    func rateClinic() -> String {
        return "\(SALAMTAK_BASE_URL)RateDoctor"
    }
    func getCoronaMedicines(_ searchKey: String) -> String {
        return "\(SALAMTAK_BASE_URL)Corona_Medications_Items?SearchKey=\(searchKey)"
    }
    func getAppVersionAndInReview() -> String {
        return "\(SALAMTAK_BASE_URL)GetAppVersion"
    }
    func getAUpdateImage() -> String {
        return "\(SALAMTAK_BASE_URL)UploadProfilePhoto"
    }
    func getSupplies(_ searchKey: String) -> String {
        return "\(SALAMTAK_BASE_URL)Medical_Accessories_Items?SearchKey=\(searchKey)"
    }
    
    func getPHRCriteria() -> String {
        return "\(SALAMTAK_BASE_URL)Patient_PHR_Criteria"
    }
    func getReservationCount() -> String {
        return "\(SALAMTAK_BASE_URL)GetPatientCurrentRequestsCount"
    }
    func GetPsychiatricType() -> String {
        return "\(SALAMTAK_BASE_URL)GetPsychiatricType"
    }
    
    func cancelVideoCallRequest(_ id: String) -> String {
        return "\(SALAMTAK_BASE_URL)SendVideoCallPushNotification?WebAppointmentId=\(id)"
    }
    
    func applyPromoCode() -> String {
        return "\(SALAMTAK_BASE_URL)CheckIfPromoIsValid"
    }
}

