//
//  PHRUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/23/21.
//

import Foundation
class PHRUrl {
    static let instance = PHRUrl()
    private init () {}
    fileprivate let PHR_BASE_URL = "\(BASE_URL)Clinivisor/"
    fileprivate let APIBaseURLClinvisor = "\(BASE_URL)Clinivisor/"
    fileprivate let APIBaseURLPrivateHospitals = "\(BASE_URL)PrivateHospitals/"

    func getPHRDiseaseUrl() -> String {
        return "\(PHR_BASE_URL)GET_PHR_Disease"
    }
    
    func getSaveDiseasesUrl() -> String {
        return "\(PHR_BASE_URL)SaveDiseases"
    }
    
    func getPHRMedications() -> String {
        return "\(PHR_BASE_URL)GET_PHR_Medications"
    }
    
    func saveMedication() -> String {
        return "\(PHR_BASE_URL)MedicationsSave"
    }
    
    func getDosesTypes() -> String {
        return "\(PHR_BASE_URL)GetDosesTypes"
    }
    
    func getPHR_Vitals() -> String {
        return "\(APIBaseURLClinvisor)GET_PHR_Vitals"
    }
    
    func getSAVE_PHR_Vitals() -> String {
        return "\(APIBaseURLClinvisor)SaveVitals"
    }
    
    func getPHRAttachments() -> String {
        return "\(PHR_BASE_URL)GET_PHR_Attachment"
    }
    
    func saveMedicalReport() -> String {
        return "\(PHR_BASE_URL)InvestigationsSave"
    }
    
    func getOperationsURL()->String{
        return "\(APIBaseURLPrivateHospitals)GetOperations"
    }
    
    func getSaveSurgicalURL()->String{
        return "\(APIBaseURLClinvisor)SaveSurgical"
    }
    
    func get_PHR_SurgicalURL()->String{
        return "\(APIBaseURLClinvisor)GET_PHR_Surgical"
    }
    func searchHospital(_ keyword: String) -> String {
        return "\(APIBaseURLPrivateHospitals)GetHospitalCenters?Keyword=\(keyword)"
    }
    
    func getChageSchedual()->String{
        return "\(APIBaseURLClinvisor)ChangeAppointmentSlot"
    }
}
