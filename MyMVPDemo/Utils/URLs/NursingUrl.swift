//
//  NursingUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/17/21.
//

import Foundation
class NursingUrl {
    
    static let instance = NursingUrl()
    private init () {}
    
    fileprivate let NURSING_BASE_URL = "\(BASE_URL)Nurse/"
    
    func getAllNurseServicesURL() -> String {
        return "\(NURSING_BASE_URL)GetAllNurseServices"
    }
    
    func getAllNurseQualificationsURL() -> String {
        return "\(NURSING_BASE_URL)GetAllQualificationsByServiceId"
    }
        
    func getNursingPriceURL() -> String {
        return "\(NURSING_BASE_URL)GetNursingPrice"
    }
    
    func getIdImagesForPatientURL() -> String {
        return "\(NURSING_BASE_URL)GetIdImagesForPatient"
    }
    
    func getUploadNurseRequestAttachsURL() -> String {
        return "\(NURSING_BASE_URL)UploadNurseRequestAttachs"
    }
    
    func getDeleteNurseRequestAttachsURL() -> String {
        return "\(NURSING_BASE_URL)DeleteNurseRequestAttachs"
    }
    
    func getAllNursingRequestsURL() -> String {
        return "\(NURSING_BASE_URL)GetNurseRequestsForPatient"
    }
}
