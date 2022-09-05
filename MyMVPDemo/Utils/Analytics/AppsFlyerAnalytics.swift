////
////  AppsFlyerAnalytics.swift
////  Youmeda
////
////  Created by m3azy on 13/11/2021.
////
//
//import Foundation
//import AppsFlyerLib
//
//class AppsFlyerAnalytics: AnalyitcsProtocol {
//    
//    func addToCart(name: String, id: String, price: String, module: String) {
//        AppsFlyerLib.shared().logEvent(AFEventAddToCart,
//          withValues: [
//            AFEventParamContent: name,
//            AFEventParamContentId: id,
//            AFEventParamPrice: Double(price) ?? 0,
//            AFEventParamContentType: module
//        ])
//    }
//    
//    func openScreen(screenName: String) {
////        AppsFlyerLib.shared().logEvent(afevents, withValues: <#T##[AnyHashable : Any]?#>)
//    }
//    
//    func purchase(revenue: String, quantity: String, receiptId: String, module: String) {
//        AppsFlyerLib.shared().logEvent(AFEventPurchase,
//          withValues: [
//            AFEventParamRevenue: revenue,
//            AFEventParamCurrency: "EGP",
//            AFEventParamQuantity: quantity,
//            AFEventParamReceiptId: receiptId,
//            AFEventParamContentType: module
//        ])
//    }
//}
