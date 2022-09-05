//
//  MedicalInsuranceModel.swift
//  Youmeda
//
//  Created by m3azy on 04/02/2021.
//

import Foundation

class MedicalInsuranceModel: Codable {
    var value: String?
    var data: MedicalInsuranceDataModel?
    
    init() {
        value = nil
        data = nil
    }
}

class MedicalInsuranceDataModel: Codable {
    let lat: String?
    let lng: String?
    let category: String?
    let type: String?
    var id: String?
    
    init() {
        lat = nil
        lng = nil
        category = nil
        type = nil
        id = nil
    }
}
