//
//  AllergyUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/23/21.
//

import Foundation
class AllergyUrl{
    
    static let instance = AllergyUrl()
    private init () {}
    
    fileprivate let ALLERGY_BASE_URL = "\(BASE_URL)Salamtak/"
    fileprivate let APIBaseURLClinvisor = "\(BASE_URL)Clinivisor/"

    func getAllergyMedicationURL() -> String {
        return "\(ALLERGY_BASE_URL)GetMedicationItemsNew"
    }
    
    func getSavedAllergiesURL() -> String {
        return "\(APIBaseURLClinvisor)SP_GET_PHR_Allergies"
    }

    func getSavedAllergiesMMedicalURL() -> String {
        return "\(ALLERGY_BASE_URL)SaveMedicationAllergies"
    }
    
    func getAllergiesURL() -> String {
        return "\(ALLERGY_BASE_URL)GetAllergiesItems"
    }
    
    func getSaveAllergiesURL() -> String {
        return "\(APIBaseURLClinvisor)SaveAllergies"
    }
    
}
