//
//  SearchResponseModel.swift
//  Youmeda
//
//  Created by Mohamed on 1/18/21.
//

import Foundation

class SearchResponseModel: Codable {
    
    let complaints: [MedicineModel]?
    let CurrentPage: String?
    let PageCount: String?
}
