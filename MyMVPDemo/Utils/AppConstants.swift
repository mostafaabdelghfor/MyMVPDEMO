//
//  AppConstant.swift
//  Youmeda
//
//  Created by Mohamed on 1/9/21.
//

import Foundation

let SWAGGER_COLLECTION = "http://40.127.194.127:5656/swagger/ui/index"

#if DEBUG
    let BASE_URL = "http://40.127.194.127:5656/"
    let LabRad_IMAGE_BASE_URL = "http://40.127.194.127:55/"

#else
    let BASE_URL = "https://youmeda.com/api/"
    let LabRad_IMAGE_BASE_URL = "https://youmeda.com/"
#endif

let FONT_REGULAR = "Almarai-Regular"
let FONT_SEMIBOLD = "Cairo-SemiBold"
let FONT_BOLD = "Almarai-Bold"
let FONT_BLACK = "Cairo-Black"
let OK = "OK"
let CANCEL = "CANCEL"
let ENTER_NAME = "ENTER_NAME"
let ENTER_VALID_MAIL = "ENTER_VALID_MAIL"
let ENTER_PHONE = "ENTER_PHONE"
let ENTER_PASSWORD = "ENTER_PASSWORD"
let PASSWORDS_MUST_BE_IDENTICAL = "PASSWORDS_MUST_BE_IDENTICAL";
let ENTER_BIRTHDATE = "ENTER_BIRTHDATE"
let ENTER_FULL_NAME = "ENTER_FULL_NAME"
var IN_REVIEW = "1"
let MEDICAL_INSURANCE_CASH_ID = "80052"
enum PaymentRequestType : String {
    case Lab = "0"
    case Rad = "1"
    case Clinic = "2"
    case Pharmacy = "3"
    case Nurse = "4"
}

var backFromLogin = false
let PROFESSOR = "PROFESSOR"
let CONSULTANT = "CONSULTANT"
let LECTURER = "LECTURER"
let SPECIALIST = "SPECIALIST"


enum AppTypeEnum {
    case youmedaPlus
    case youmeda
}

var APP_TYPE = AppTypeEnum.youmeda
let ARE_YOU_SURE_CLOSE_CALL = "ARE_YOU_SURE_CLOSE_CALL"
let ALERT = "ALERT"
let YES = "YES"
let NO = "NO"

var HasCronicDiseases = "0"
var HasMedications = "0"
var HasOperations = "0"
var HasVitals = "0"
var HasInvestigations = "0"

var RATING_POPUP_OPENED = false
let PHARMACY = "Pharmacy"
let CLINIC = "Clinic"
let LAB_RAD = "Lab And Rad"
