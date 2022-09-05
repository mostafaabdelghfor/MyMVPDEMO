//
//  AddPatientAddressesUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation

import Foundation

class AddPatientAddressesUrl {
    
    static let instance = AddPatientAddressesUrl()
    private init () {}
    fileprivate let AUTH_BASE_URL = "\(BASE_URL)Pharmacy/"
    func getAddPatientAddressesUrl() -> String {
        return "\(AUTH_BASE_URL)AddPatientAddresses"
    }
   
}
