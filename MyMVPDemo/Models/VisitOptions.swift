//
//  VisitOptions.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import Foundation
struct VisitOptions {
    internal init(service: String = "", serviceID: Int = 0, isHour: Bool = false, period: Int = 0, qualificaitons: String = "", serviceDate: String = "", pateintnumber: Int = 0, serviceTime: String = "", price: String = "", isMale: Bool = false, qualificaitonID: Int = 0 , address:String = "") {
        self.service = service
        self.serviceID = serviceID
        self.isHour = isHour
        self.period = period
        self.qualificaitons = qualificaitons
        self.serviceDate = serviceDate
        self.pateintnumber = pateintnumber
        self.serviceTime = serviceTime
        self.price = price
        self.isMale = isMale
        self.qualificaitonID = qualificaitonID
        self.address = address
    }
    
    var service = ""
    var serviceID = 0
    var isHour = false
    var period = 0
    var qualificaitons = ""
    var serviceDate = ""
    var pateintnumber = 0
    var serviceTime = ""
    var price = ""
    var isMale = false
    var qualificaitonID = 0
    var address = ""
}
