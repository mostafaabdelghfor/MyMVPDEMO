//
//  EditDeleteAddressesUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation

class EditDeleteAddressesUrl {
    
    static let instance = EditDeleteAddressesUrl()
    private init () {}
    fileprivate let AUTH_BASE_URL = "\(BASE_URL)Salamtak/"
    func getEditDeleteAddressesUrl() -> String {
        return "\(AUTH_BASE_URL)EditDeleteAddresses"
    }
   
}

