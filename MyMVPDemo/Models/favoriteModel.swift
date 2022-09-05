//
//  favoriteModel.swift
//  Youmeda
//
//  Created by Khabeer on 1/20/21.
//

import Foundation

class favoriteOBJ: Codable {
   var OnlineRequests:[favoriteModel]?
}
class favoriteModel: Codable {
    var DoctorAr :String?
    var DoctorId :String?
    var OnlinePatientId :String?
    var ProviderId :String?
    var DoctorTitle :String?
    var Source :String?
    var SpecialtyEn :String?
    var SpecialtyAr :String?
    var OnlineFavoriteId :String?
    var DoctorEn :String?
    var IsMale :String?
    var LicenseId: String
}
