//
//  SurgicalOperationsURL.swift
//  Youmeda
//
//  Created by Khabeer on 2/27/21.
//

import Foundation
class SurgicalOperationsUrl{
    static let instance = SurgicalOperationsUrl()
    private init () {}
    fileprivate let SurgicalOperations_BASE_URL = "\(BASE_URL)PrivateHospitals/"
    func GetOperationsURL() -> String {
        return "\(SurgicalOperations_BASE_URL)GetOperations"
    }
    
    func GetPrivateHospitalsHasOperationsURL() -> String {
        return "\(SurgicalOperations_BASE_URL)GetPrivateHospitalsHasOperations"
    }
        
    func GetCompareAccountOperationsURL() -> String {
        return "\(SurgicalOperations_BASE_URL)CompareAccountOperations"
    }
    
    func SaveIcuOnlineRequest() -> String {
        return "\(BASE_URL)PrivateHospitals/SaveIcuOnlineRequest"
    }
    func UploadMedicalReport() -> String {
        return "\(BASE_URL)PrivateHospitals/UploadMedicalReport"
    }
    func CreatePatientOperation() -> String {
        return "\(BASE_URL)PrivateHospitals/CreatePatientOperation"
    }
    

}
