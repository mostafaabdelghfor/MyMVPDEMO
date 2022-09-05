//
//  AppUtils.swift
//  Youmeda
//
//  Created by Mohamed on 1/9/21.
//

import Foundation
import UIKit

//func GET_DEFAULT_HEADERS() -> [String: String]{
//    print("============= User Token ================  \(UserDefaults.standard.getUserToken()) ")
//    
//    return [
//        "Authorization": "Bearer \(UserDefaults.standard.getUserToken())"]
//}
//
//func BACK_TO_LOGIN_VC() {
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//        var index = 0
//        for (i, controller) in nav.viewControllers.enumerated() {
//            if controller is LoginVC {
//                index = i
//                break
//            }
//        }
//        nav.popToViewController(nav.viewControllers[index], animated: true)
//    }
//}
//
//func GO_TO_LOGIN() {
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//        let rvc :LoginVC = LoginVC(cameFromReservation: true)
//        rvc.comingWithCode401 = true
//        nav.showIndicator(false)
//        nav.pushViewController(rvc , animated: true)
//    }
//}
//
//func BACK_TO_TABS() {
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//        var index = 0
//        for (i, controller) in nav.viewControllers.enumerated() {
//            if controller is MainTabsViewController {
//                index = i
//                break
//            }
//        }
//        nav.popToViewController(nav.viewControllers[index], animated: true)
//    }
//}
//
//func GET_MONTH_FROM_NUMBER(_ month: String) -> String {
//    switch month {
//    case "1", "01":
//        return "jan".localize
//    case "2", "02":
//        return "feb".localize
//    case "3", "03":
//        return "mars".localize
//    case "4", "04":
//        return "april".localize
//    case "5", "05":
//        return "may".localize
//    case "6", "06":
//        return "june".localize
//    case "7", "07":
//        return "july".localize
//    case "8", "08":
//        return "aug".localize
//    case "9", "09":
//        return "sep".localize
//    case "10":
//        return "oct".localize
//    case "11":
//        return "nov".localize
//    case "12":
//        return "dec".localize
//    default:
//        return ""
//    }
//}
//
//func CHECK_PAYMENT_STATUS(_ id: String, requestType: String, vc: UIViewController) {
//    
//    vc.showIndicator(true)
//    let params = ["RequestId": id,
//                  "_RequestType": requestType]
//    AppConnectionsHandler.post(url: PaymentUrl.instance.getPaymentUrl(), params: params, headers: GET_DEFAULT_HEADERS(), type: PaymentResponseModel.self) { (status, model, error) in
//        vc.showIndicator(false)
//        switch status {
//        case .sucess:
//            let model = model as! PaymentResponseModel
//            if model._FawryPaySkyTransactionResponseObj?._PaymentTransactionResponseObj?.IsPaid ?? "" == "" || model._FawryPaySkyTransactionResponseObj?._PaymentTransactionResponseObj?.IsPaid ?? "" == "0" {
//                if model.Data?.PaymentType ?? "" == "1" && model._FawryPaySkyTransactionResponseObj?._FawryTransactionResponseObj?.paymentMethod ?? "" == "PAYATFAWRY" && (model._FawryPaySkyTransactionResponseObj?._FawryTransactionResponseObj?.paymentStatus ?? "" == "UNPAID" || model._FawryPaySkyTransactionResponseObj?._FawryTransactionResponseObj?.paymentStatus ?? "" == "NEW") {
//                        AppPopUpHandler.instance.openVCPop(PaymentPopupViewController(model: model._FawryPaySkyTransactionResponseObj!._FawryTransactionResponseObj!), height: 300)
//                    
//                } else {
//                    let fawryPayment = FawryPaymentVC()
//                    fawryPayment.paymentDetails = model
//                   vc.navigationController?.pushViewController(fawryPayment , animated: true)
////                    let svc :PaymentGateWayVC = PaymentGateWayVC()
////                    svc.requestId = Int(id)
////                    svc.RequestType = "2"
////                    if let loadedPerson = UserDefaults.standard.decode(for: userSaved.self , using: "PatientData") {
////                        svc.PatientId = Int(loadedPerson.OnlinePatientId ?? "0")
////                    }
////                    vc.navigationController?.pushViewController(svc, animated: true)
//                }
//            } else {
//                AppPopUpHandler.instance.initHintPopUp(container: vc, message: "paymentDone".localize)
//            }
//            break
//        case .error:
//            AppPopUpHandler.instance.initHintPopUp(container: vc, message: error ?? "")
//            break
//        }
//    }
//}

//func UPDATE_PAYMENT(paymentDetails: PaymentResponseModel, type: String, transactionId: String = "", vc: UIViewController) {
//    vc.showIndicator()
//    let fees = (type == "1" ? Double(paymentDetails.Data?.fawryFeePrice ?? "0")! : 0)
//    var params = ["RequestId": paymentDetails.Data?.reserviaionId ?? "",
//                  "PayType": type,
//                  "Price": Double(paymentDetails.Data?.TotalNetPayment ?? "0")! + fees,
//                  "RequestType": paymentDetails.Data?.RequestType ?? "",
//                  "PatientId": UserDefaults.standard.getDatabaseID()] as [String : Any]
//    if type == "1" && transactionId != "" {
//        params.updateValue(["Amount": Double(paymentDetails.Data?.TotalNetPayment ?? "0")! + fees,
//                            "merchantRefNumber": paymentDetails.Data?.merchantRefNumber ?? "",
//                            "fawryRefNumber": transactionId,
//                            "paymentMethod": "PAYATFAWRY"], forKey: "ChargeResponse")
//    }
//    AppConnectionsHandler.post(url: PaymentUrl.instance.getUpdatePaymentUrl(), params: params, headers: GET_DEFAULT_HEADERS(), type: PaymentResponseModel.self) { (status, model, error) in
//        vc.showIndicator(false)
//        switch status {
//        case .sucess:
//            if transactionId == "" && type == "1" || type == "2" {
//                NotificationCenter.default.post(name: .openPaymentSDK, object: nil)
//            } else {
//                vc.navigationController?.popViewController(animated: true)
//            }
//            break
//        case .error:
//            AppPopUpHandler.instance.initHintPopUp(container: vc, message: error ?? "")
//            break
//        }
//    }
//}
//
//func GET_PHR_PUSH_VIEW_CONTROLLER() -> UIViewController? {
//    if HasCronicDiseases == "0" {
//        return OptionViewController(.coronicDieses)
//    } else if HasMedications == "0" {
//        return OptionViewController(.medications)
//    } else if HasOperations == "0" {
//        return OptionViewController(.operation)
//    } else if HasInvestigations == "0" {
//        return OptionViewController(.investigations)
//    } else {
//        return nil
//    }
//}

func REPLACE_ARABIC_TEXT(_ text: String) -> String {
    var string = text
    string = string.replacingOccurrences(of: "آ", with: "ا")
    string = string.replacingOccurrences(of: "إ", with: "ا")
    string = string.replacingOccurrences(of: "أ", with: "ا")
    string = string.replacingOccurrences(of: "ئ", with: "ى")
    string = string.replacingOccurrences(of: "ي", with: "ى")
    return string
}

import MapKit
import MOLH

func OPEN_LOCATION_ON_MAP(lat: Double, lng: Double) {
    if let urlDestination = URL.init(string:  "https://www.google.com/maps/?center=\(lat),\(lng)&zoom=14&views=traffic&q=\(lat),\(lng)") {
        UIApplication.shared.open(urlDestination, options: [:], completionHandler: nil)
    } else {
        NSLog("Can't use comgooglemaps://")
        let latitude: CLLocationDegrees = lat
        let longitude: CLLocationDegrees = lng
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
//            mapItem.name = "Place Name"
        mapItem.openInMaps(launchOptions: options)
    }
}

func GET_RATIO(_ number: CGFloat) -> CGFloat {
    return number * UIScreen.main.bounds.width / 360
}

//func OPEN_IMAGE_VIEW(imageView: UIImageView, vc: UIViewController) {
//    let imageInfo = JTSImageInfo()
//    imageInfo.image = imageView.image
//    imageInfo.referenceRect = imageView.frame;
//    imageInfo.referenceView = imageView.superview;
//    imageInfo.referenceContentMode = imageView.contentMode;
//    imageInfo.referenceCornerRadius = imageView.layer.cornerRadius;
//
//    let imageViewer = JTSImageViewController(imageInfo: imageInfo, mode:.image, backgroundStyle: .scaled)
//
//    imageViewer?.show(from: vc, transition: .fromOriginalPosition)
//}

//func OPEN_CANCELLATION_REAONS_POPUP(vc: UIViewController, module: CancellatioReasons, requestId: String, pageType: String = "") {
//    vc.showIndicator()
//    AppConnectionsHandler.get(url: "\(BASE_URL)Youmeda/GetCancellationReasons?Module=\(module)", headers: GET_DEFAULT_HEADERS(), type: CancellationReasonsResponseModel.self) { (status, model, error) in
//        vc.showIndicator(false)
//        switch status {
//        case .sucess:
//            let model = model as! CancellationReasonsResponseModel
//            let popupVc = CancellationReasonsViewController(arrayReasons: model.Data ?? [CancellatioReasonsModel](), module: module, requestId: requestId, pageType: pageType)
//            popupVc.delegate = vc as? CancellationReasonsDelegate
////            AppPopUpHandler.instance.openPopup(container: vc, vc: popupVc, dismiss: false)
//            AppPopUpHandler.instance.openCancellationReasonPopup(popupVc, height: CGFloat((model.Data?.count ?? 0) * 50) + 320)
////            vc.navigationController?.pushViewController(CancellationReasonsViewController(arrayReasons: model.Data ?? [CancellatioReasonsModel](), module: module), animated: true)
//            break
//        case .error:
//            AppPopUpHandler.instance.initHintPopUp(container: vc, message: error ?? "")
//            break
//        }
//    }
//}

class CancellationReasonsResponseModel: Codable {
    let Data: [CancellatioReasonsModel]?
}

class CancellatioReasonsModel: Codable {
    let Id: String?
    let ArabicName: String?
    let EnglishName: String?
    let Module: String?
    let Sort: String?
    var selected: Bool?
    
    func getName() -> String {
        MOLHLanguage.isArabic() ? ArabicName ?? "" : EnglishName ?? ""
    }
}
