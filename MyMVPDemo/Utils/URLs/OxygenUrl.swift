//
//  OxygenUrl.swift
//  Youmeda
//
//  Created by Mohamed on 4/16/21.
//

import Foundation

class OxygenUrl {
    
    static let instance = OxygenUrl()
    private init () {}
    
    fileprivate let OXYGEN_BASE_URL = "\(BASE_URL)Oxygen/"
    
    func getOxygenTanks() -> String {
        "\(OXYGEN_BASE_URL)GetOxgyenTanks"
    }
    
    func submitOxygenTanks() -> String {
        "\(OXYGEN_BASE_URL)SubmitOxygenOrder"
    }
    
    func getOxygenReservations() -> String {
        "\(OXYGEN_BASE_URL)GetPatientOrders"
    }
    
    func getCancelOrder() -> String {
        "\(OXYGEN_BASE_URL)CancelOnlineRequest"
    }
}
