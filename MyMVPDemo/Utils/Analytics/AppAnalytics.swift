////
////  AppAnalytics.swift
////  Youmeda
////
////  Created by m3azy on 13/11/2021.
////
//
//import Foundation
//
//class AppAnalytics: AnalyitcsProtocol {
//    
//    static let instance = AppAnalytics()
//    private init() { }
//    
//    private let appsFlyerModel = AppsFlyerAnalytics()
//    private let smartLookModel = SmartLookAnalytics()
//    private let appGainModel = AppGainAnalytics()
//    
//    func addToCart(name: String, id: String, price: String, module: String) {
//        appsFlyerModel.addToCart(name: name, id: id, price: price, module: module)
//        smartLookModel.addToCart(name: name, id: id, price: price, module: module)
//        appGainModel.addToCart(name: name, id: id, price: price, module: module)
//    }
//    
//    func openScreen(screenName: String) {
//        appsFlyerModel.openScreen(screenName: screenName)
//        smartLookModel.openScreen(screenName: screenName)
//        appGainModel.openScreen(screenName: screenName)
//    }
//    
//    func purchase(revenue: String, quantity: String, receiptId: String, module: String) {
//        appsFlyerModel.purchase(revenue: revenue, quantity: quantity, receiptId: receiptId, module: module)
//        smartLookModel.purchase(revenue: revenue, quantity: quantity, receiptId: receiptId, module: module)
//        appGainModel.purchase(revenue: revenue, quantity: quantity, receiptId: receiptId, module: module)
//    }
//}
