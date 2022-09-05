//
//  SingletoneClass.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import UIKit

class NursingSingletoneClass: NSObject {
     static let sharedInstance = NursingSingletoneClass()
//     var nursingPagerViewController = NursingPagerViewController()
     var serviceID = String()
     var serviceName = "Service Name"
     var visitOptions = VisitOptions()
     var lastNursingAddressID  = "0"
     var Address = ""
}
