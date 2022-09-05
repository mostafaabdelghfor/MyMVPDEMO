//
//  getPatientAddressUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation


class PatientAddressUrl {
    static let instance = PatientAddressUrl()
    private init () {}
    
    fileprivate let IPForPharmacy = "\(BASE_URL)Pharmacy/"
    
    func getPatientAddressUrl() -> String {
        return "\(IPForPharmacy)GetPatientAddress"
    }
   
}
