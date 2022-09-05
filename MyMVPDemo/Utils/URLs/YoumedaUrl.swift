//
//  YoumedaUrl.swift
//  Youmeda
//
//  Created by mohamed elmaazy on 06/06/2021.
//

import Foundation

class YoumedaUrl {
    
    static let instance = YoumedaUrl()
    private init () {}
    
    fileprivate let YOUMEDA_BASE_URL = "\(BASE_URL)Youmeda/"
    
    #if DEBUG
        let ARTICALS_BASE_URL = "http://40.127.194.127:1278/Content/Design/img/Articls/"
    #else
        let ARTICALS_BASE_URL = "https://youmeda.com/Content/Design/img/Articls/"
    #endif
        
    func getArticals() -> String {
        "\(YOUMEDA_BASE_URL)Get_MostCommonQuestions"
    }
}
