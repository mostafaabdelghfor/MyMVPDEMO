//
//  AnalyticsProtocol.swift
//  Youmeda
//
//  Created by m3azy on 13/11/2021.
//

import Foundation

protocol AnalyitcsProtocol {
    func addToCart(name: String, id: String, price: String, module: String)
    func openScreen(screenName: String)
    func purchase(revenue: String, quantity: String, receiptId: String, module: String)
}
