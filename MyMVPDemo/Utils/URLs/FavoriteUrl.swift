//
//  FavoriteUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/20/21.
//

import Foundation


class FavoriteUrl {
    static let instance = FavoriteUrl()
    private init () {}
    fileprivate let FAVORITE_BASE_URL = "\(BASE_URL)Salamtak/"
    func getFavoriteUrl() -> String {
        return "\(FAVORITE_BASE_URL)GetFavoriteDoctor"
    }
    
    func getChangeDoctorFavoriteUrl() -> String {
        return "\(FAVORITE_BASE_URL)ChangeDoctorFavorite"
    }
}
