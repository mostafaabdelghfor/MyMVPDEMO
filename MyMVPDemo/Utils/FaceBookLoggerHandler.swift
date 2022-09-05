////
////  FaceBookLoggerHandler.swift
////  FakahanySwift
////
////  Created by Mohamed Elmaazy on 11/27/18.
////  Copyright © 2018 MiNi Mac. All rights reserved.
////
//
//import Foundation
//import FBSDKCoreKit
//
//class FaceBookLoggerHandler {
//    
//    static let instance = FaceBookLoggerHandler()
//    private init() {}
//    
//    func logActiveatedEvent() {
//        AppEvents.logEvent(.init("fb_mobile_complete_registration"))
//    }
//    
//    func logScheduleEvent(type: String) {
//        let parameters = [AppEvents.ParameterName.contentType.rawValue: type]
//        AppEvents.logEvent(.schedule, parameters: parameters)
//    }
//    
//    func logRateEvent(type: String) {
//        let parameters = [AppEvents.ParameterName.contentType.rawValue: type]
//        AppEvents.logEvent(.rated, parameters: parameters)
//    }
//    
//    func logPurchased() {
////        let parameters = [AppEvents.ParameterName.contentType.rawValue: type]
//        AppEvents.logEvent(.purchased)
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    func logEvent(name: String, eventName: String = "Page View") {
//        AppEvents.logEvent(AppEvents.Name(rawValue: eventName), parameters: [AppEvents.ParameterName.contentType.rawValue: eventName, AppEvents.ParameterName.contentID.rawValue: name, "_valueToSum": "180"])
//    }
//    
//    func logLoginEvent(method: String, isLogin: Bool) {
//        let parameters = [AppEvents.ParameterName.currency.rawValue: "EGP",
//            AppEvents.ParameterName.registrationMethod.rawValue: method]
//        AppEvents.logEvent(.init(isLogin ? "Login" : "fb_mobile_complete_registration"), valueToSum: 180, parameters: parameters)
//    }
//    
//    func addToCart(ids: String, value: String, name: String) {
//        AppEvents.logEvent(.addedToCart, valueToSum: Double(value) ?? 0, parameters:[
//            AppEvents.ParameterName.contentID.rawValue: ids,
//            AppEvents.ParameterName.contentType.rawValue: "Product",
//            AppEvents.ParameterName.currency.rawValue: "EGP",
//            AppEvents.ParameterName.content.rawValue: name
//            ])
//    }
//    
//    func logInitiateCheckoutEvent(contentId: String, numItems: Int, totalPrice: Double) {
//        let parameters = [AppEvents.ParameterName.contentID.rawValue: contentId,
//            AppEvents.ParameterName.contentType.rawValue: "Initiate checkout",
//            "fb_num_items": "\(numItems)",
//            AppEvents.ParameterName.paymentInfoAvailable.rawValue: "0",
//            AppEvents.ParameterName.currency.rawValue: "EGP"]
//        AppEvents.logEvent(.initiatedCheckout, valueToSum: totalPrice, parameters: parameters)
//    }
//    
//    func sendCoupon(contentId: String, totalPrice: Double) {
//        let parameters = [AppEvents.ParameterName.contentID.rawValue: contentId]
//        AppEvents.logEvent(AppEvents.Name(rawValue: "Activated a coupon number"), valueToSum: totalPrice, parameters: parameters)
//    }
//    
//    func ecommercePurchase(contentId: String, value: String, cartCount: String) {
//        AppEvents.logPurchase(Double(value) ?? 0, currency: "EGP", parameters: [
//            AppEvents.ParameterName.contentType.rawValue: "Product",
//            "fb_num_items": cartCount,
//            AppEvents.ParameterName.contentID.rawValue: contentId])
//    }
//    
//    func sendPaymentMethod(isCash: Bool) {
//        let parameters = [AppEvents.ParameterName.paymentInfoAvailable.rawValue: isCash ? "COD" : "Online"]
//        AppEvents.logEvent(AppEvents.Name(rawValue: "Payment Method"), parameters: parameters)
//    }
//    
//    func viewItemList(id: String) {
//        AppEvents.logEvent(AppEvents.Name(rawValue: "view item list"), parameters:[
//            "item_category": id
//        ])
//    }
//}
