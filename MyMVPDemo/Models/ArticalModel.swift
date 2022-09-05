//
//  ArticalModel.swift
//  Youmeda
//
//  Created by mohamed elmaazy on 06/06/2021.
//

import Foundation
import MOLH

class ArticalModel: Codable {
    
    let TitleEnglishName: String?
    let TitleArabicName: String?
    let DescriptionEn: String?
    let DescriptionAr: String?
    let VideoLink: String?
    let PargrphEnglishName: String?
    let PargrphArabicName: String?
    let sort: String?
    let QuestionType: String?
    let Id: String?
    let CreationDate: String?
    let LastUpdateDate: String?
    let IsDeleted: String?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? TitleArabicName ?? "" : TitleEnglishName ?? ""
    }
    
    func getDescription() -> String {
        MOLHLanguage.isArabic() ? DescriptionAr ?? "" : DescriptionEn ?? ""
    }
    
    func getParagraph() -> String {
        MOLHLanguage.isArabic() ? PargrphArabicName ?? "" : PargrphEnglishName ?? ""
    }
}
