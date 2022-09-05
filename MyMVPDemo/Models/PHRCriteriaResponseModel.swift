//
//  PHRCriteriaResponseModel.swift
//  Youmeda
//
//  Created by mohamed elmaazy on 09/06/2021.
//

import Foundation

class PHRCriteriaResponseModel: Codable {
 
    let Data: PHRCriteriaModel?
}

class PHRCriteriaModel: Codable {
    
    let HasCronicDiseases: String?
    let HasMedications: String?
    let HasOperations: String?
    let HasVitals: String?
    let HasInvestigations: String?
    
    let DiseasesCount: String?
    let MedicationsCount: String?
    let OperationsCount: String?
    let InvestigationsCount: String?
}
