//
//  GouvernementsUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation

class GouvernementsUrl {
    
    static let instance = GouvernementsUrl()
    private init () {}
    
    fileprivate let AUTH_BASE_URL = "\(BASE_URL)Salamtak/"
    
    func getGouvernementsUrl() -> String {
        return "\(AUTH_BASE_URL)GetGouvernements"
    }
   
}
