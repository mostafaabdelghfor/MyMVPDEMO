//
//  UserDefaultsExtensions.swift
//  MariaTradeSwift
//
//  Created by Mohamed Elmaazy on 2/4/20.
//  Copyright © 2020 Mohamed Elmaazy. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    func getSavedDate() -> String {
        return UserDefaults.standard.object(forKey: "savedDate") as? String ?? ""
    }
    
    func setSavedDate(_ date: String) {
        UserDefaults.standard.set(date, forKey: "savedDate")
    }
    
    func getDatabaseToken() -> String {
        return UserDefaults.standard.object(forKey: "databaseToken") as? String ?? ""
    }
    
    func setDatabaseToken(_ token: String) {
        UserDefaults.standard.set(token, forKey: "databaseToken")
    }
    
    func getDatabaseID() -> String {
        return UserDefaults.standard.object(forKey: "databaseID") as? String ?? ""
    }
    
    func setDatabaseID(_ token: String) {
        UserDefaults.standard.set(token, forKey: "databaseID")
    }
    
    func getMobilenumberHasBeenVerfriedTrue() -> String {
        return UserDefaults.standard.object(forKey: "mobilenumberhasbeenverfriedTrue") as? String ?? ""
    }
    
    func setMobilenumberHasBeenVerfriedTrue(_ token: String) {
        UserDefaults.standard.set(token, forKey: "mobilenumberhasbeenverfriedTrue")
    }
    
    func setVerifiedUser(_ verified: String) {
        UserDefaults.standard.set(verified, forKey: "mobilenumberhasbeenverfriedTrue")
    }
    
    func getVerifiedUser() -> String {
        return UserDefaults.standard.object(forKey: "mobilenumberhasbeenverfriedTrue") as? String ?? ""
    }
    
    func getUserToken() -> String {
        return UserDefaults.standard.object(forKey: "databaseToken") as? String ?? ""
    }
    
    func setUserToken(_ token: String) {
        UserDefaults.standard.set(token, forKey: "databaseToken")
    }
    
    func setFirebaseToken(_ token: String) {
        UserDefaults.standard.set(token, forKey: "pushToken")
    }
    
    func getFirebaseToken() -> String {
        return UserDefaults.standard.object(forKey: "pushToken") as? String ?? ""
    }
    
    
    func getWallet() -> String {
        return UserDefaults.standard.object(forKey: "Wallet") as? String ?? "0"
    }
    
    func setWallet(_ walletAmount: String) {
        UserDefaults.standard.set(walletAmount, forKey: "Wallet")
    }
    
    func getTutorialOpened() -> String {
        return UserDefaults.standard.object(forKey: "tutorialOpened") as? String ?? ""
    }
    
    func setTutorialOpened(_ opened: String) {
        UserDefaults.standard.set(opened, forKey: "tutorialOpened")
    }
    
    func getSetttingsOpened() -> String {
        return UserDefaults.standard.object(forKey: "settingsOpened") as? String ?? ""
    }
    
    func setSetttingsOpened(_ opened: String) {
        UserDefaults.standard.set(opened, forKey: "settingsOpened")
    }
    
    
    func getSocialLogin() -> String {
        return UserDefaults.standard.object(forKey: "SocialLogin") as? String ?? ""
    }
    
    func setSocialLogin(_ SocialLogin: String) {
        UserDefaults.standard.set(SocialLogin, forKey: "SocialLogin")
    }
    
    func getIsHomeVisit() -> String {
        return UserDefaults.standard.object(forKey: "isHomeVisit") as? String ?? ""
    }
    
    func setIsHomeVisit(_ isHomeVisit: String) {
        UserDefaults.standard.set(isHomeVisit, forKey: "isHomeVisit")
    }
    
    func decode<T : Codable>(for type : T.Type, using key : String) -> T? {
        let defaults = UserDefaults.standard
        guard let data = defaults.object(forKey: key) as? Data else {return nil}
        let decodedObject = try? PropertyListDecoder().decode(type, from: data)
        return decodedObject
    }

    func encode<T : Codable>(for type : T, using key : String) {
        let defaults = UserDefaults.standard
        let encodedData = try? PropertyListEncoder().encode(type)
        defaults.set(encodedData, forKey: key)
        defaults.synchronize()
    }
}
