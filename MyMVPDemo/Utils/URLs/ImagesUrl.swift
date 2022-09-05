//
//  ImagesUrl.swift
//  Youmeda
//
//  Created by Khabeer on 1/18/21.
//

import Foundation

class ImagesUrl {
    
    static let instance = ImagesUrl()
    private init () {}
    
    #if DEBUG
        fileprivate let IMAGES_BASE_URL = "http://40.127.194.127:1278/Uploads/"
    #else
        fileprivate let IMAGES_BASE_URL = "https://youmeda.com/Uploads/"
    #endif
    func getImagesUrl() -> String {
        return "\(IMAGES_BASE_URL)NurseRequestImagesId/"
    }

}
