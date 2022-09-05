//
//  CitiesUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation


class CitiesUrl {
    
    static let instance = CitiesUrl()
    private init () {}
    fileprivate let AUTH_BASE_URL = "\(BASE_URL)Salamtak/"
    func getCitiesUrl() -> String {
        return "\(AUTH_BASE_URL)GetCitiesById"
    }
    func getAreasUrl() -> String {
        return "\(AUTH_BASE_URL)GetAreasByCity"
    }
}
