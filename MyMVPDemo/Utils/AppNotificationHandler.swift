//
//  AppNotificationHandler.swift
//  IQRAA
//
//  Created by Mohamed Elmaazy on 12/19/19.
//  Copyright © 2019 internet plus. All rights reserved.
//

import Foundation
import MOLH
class AppNotificationHandler {
    
    static let instance = AppNotificationHandler()
    private init() { }
    
    func handle(_ userInfoObj: [AnyHashable : Any]){
        
        if let dataToken =  UserDefaults.standard.string(forKey: "databaseToken"){
        guard let window = UIApplication.shared.keyWindow  else { return }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeVCNA") as UIViewController
        window.rootViewController = vc }
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NotificationHandler"), object: self, userInfo: userInfoObj)

        
//        let aps = userInfo["aps"] as? [String: Any] ?? [String: Any]()
//        let alert = aps["alert"] as? [String: Any] ?? [String: Any]()
//        let title = alert["title"] as? String ?? ""
//        let body = alert["body"] as? String ?? ""
    }
    
//    func gotoLabRadVC(_ userInfo: [AnyHashable : Any]) {
//        let BranchName = userInfo["Branch"] as? String ?? ""
//        let PatientName = userInfo["PatientName"] as? String ?? ""
//        let defaults = UserDefaults.standard
//        defaults.set(BranchName, forKey: "BranchNameFromDoctorOnPAtient")
//        defaults.set(PatientName, forKey: "PatientNameFromDoctorOnPAtient")
//
//
//
////        AnyHashable("RequestDate"): 2020-12-27T00:00:00, AnyHashable("gcm.notification.text"): , AnyHashable("RequestId"): 903, AnyHashable("PatientName"): mostafa abdelgafor, AnyHashable("gcm.notification.requestid"): 903, AnyHashable("IsMale"): true, AnyHashable("google.c.a.e"): 1, AnyHashable("Branch"): كايرو لاب فرع القاهره, AnyHashable("Type"): 2, AnyHashable("MobileNumber"): 01021333862]
////        {
////            alert =     {
////                title = "\U062a\U0645 \U062a\U0642\U062f\U064a\U0645 \U0637\U0644\U0628 \U062d\U062c\U0632 \U0625\U0644\U064a\U0643 \U0641\U0649 \U0641\U0631\U0639  \U0643\U0627\U064a\U0631\U0648 \U0644\U0627\U0628 \U0641\U0631\U0639 \U0627\U0644\U0642\U0627\U0647\U0631\U0647";
////            };
////            "content-available" = 1;
////            sound = default;
////        }
////
//
//
//
////        let IsMale = userInfo["IsMale"] as? true ?? false
//
//        let aps = userInfo[AnyHashable("aps")] as? NSDictionary
//                  print(aps!)
//                  let alert = aps!["alert"] as? NSDictionary
//                  print(alert!)
//
//
//    }
//
//    func gotoMedicationsVC(_ userInfo: [AnyHashable : Any]) {
//        let Diagnosiss = userInfo["Medications"] as? String ?? ""
//
//
//        let Diagnosissdic = userInfo["Medications"] as? [[String:Any]]
//
//
//        print(Diagnosiss)
//
//        if let jsonData = Diagnosiss.data(using: .utf8)
//        {
//            let json =  try? JSONSerialization.jsonObject(with: jsonData, options: [.mutableContainers, .allowFragments]) as? [[String:Any]]
//
//
//            if let jsonwihtOut = json
//            {
//
//            let arrayOfDiaData =    jsonwihtOut as? [[String:Any]]
//
//
//
//
//                if let ar = arrayOfDiaData
//                {
//                    print(ar)
//                    print(ar.count)
//
//                    var arrayOfArabicStringItemName = [String]()
//
//                    var arrayOfArabicStringmethodStr = [String]()
//
//                    for  oo in ar {
//
//
//                        arrayOfArabicStringItemName.append(oo["ItemName"]  as! String )
//
//                        arrayOfArabicStringmethodStr.append(oo["methodStr"]  as! String )
//
//
//
//                    }
//                    let defaults = UserDefaults.standard
//                    defaults.set(arrayOfArabicStringItemName, forKey: "SavedStringArrayitemNameMedication")
//
//                    defaults.set(arrayOfArabicStringmethodStr, forKey: "SavedStringArraymethodstrMedication")
//                   }
//
////                {"FrequencyUnit":31,"dozeStr":"1   4 times a day","StartTime":null,"Period":0,"NextDose":null,"PharmacyBranchId":0,"ItemId":2105653,"Remarker":null,"StartDate":null,"PharmacyId":0,"Type":0,"IsFavourite":0,"periodStr":"2 Week","Days":null,"ItemName":"براذر كير CARE 50 جرام كريم","DoseUnit":0,"Frequency":0,"BufferStatus":0,"Dose":1.0,"TakeBy":26,"methodStr":"Urethral","PeriodUnit":2}
//
//        }
//    }
//
//
//
//    }
//    func gotoDianosisVC(_ userInfo: [AnyHashable : Any]) {
//        let Diagnosiss = userInfo["Diagnosis"] as? String ?? ""
//
//        let defaults = UserDefaults.standard
//        defaults.set([], forKey: "SavedStringArray")
//
//        let Diagnosissdic = userInfo["Diagnosis"] as? [[String:Any]]
//
//
//        if let jsonData = Diagnosiss.data(using: .utf8)
//        {
//            let json =  try? JSONSerialization.jsonObject(with: jsonData, options: [.mutableContainers, .allowFragments]) as? [[String:Any]]
//
//
//            if let jsonwihtOut = json
//            {
//
//            let arrayOfDiaData =    jsonwihtOut as? [[String:Any]]
//
//
//
//                if let ar = arrayOfDiaData
//                {
//
//
//                    print(ar)
//
//                    var arrayOfArabicString = [String]()
//
//
//                    for  oo in ar {
//
//                        arrayOfArabicString.append(oo["ArabicName"]  as! String )
//
//                    }
//                    defaults.set(arrayOfArabicString, forKey: "SavedStringArray")
//
//                   }
//
//        }
//    }
//    }
//    func startVideoCall(_ userInfo: [AnyHashable : Any]) {
//        NOTIFICATION_INFO = userInfo
//        let agoraToken = userInfo["AgoraToken"] as? String ?? ""
//        let channelId = userInfo["ChannelName"] as? String ?? ""
//        let requestId = userInfo["RequestId"] as? Int ?? 0
//        let patientName = userInfo[MOLHLanguage.isArabic() ? "DoctorAr" : "DoctorEn"] as? String ?? ""
//        let seconds = (Int(userInfo["RemainingMinutes"] as? String ?? "1")!) * 60
//        let state = UIApplication.shared.applicationState
//        if state == .active {
//            // foreground
//            Sound.play(file: "sms-alert-1-daniel_simon", fileExtension: "wav", numberOfLoops: 0)
//            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//            if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//                nav.pushViewController(DoctorRequestViewController(token: agoraToken, channelId: channelId, patientName: patientName, seconds: seconds, requestId: requestId), animated: true)
//            }
//        } else {
//            AGORA_TOKEN = agoraToken
//            AGORA_CHANNEL = channelId
//            PATIENT_NAME = patientName
//            SECONDS = seconds
//            REQUEST_ID = requestId
//            NotificationCenter.default.post(name: .handleAgoraNotification, object: nil)
//        }
//    }
//
//   func goToPharmcyOrders(view:UIViewController , _ userInfo: [AnyHashable : Any] ){
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//        nav.pushViewController(PharmacyOrdersViewController(), animated: true)
//    }
//
//
//}
//
//
//    func goToMyClinicAppointments(view:UIViewController , _ userInfo: [AnyHashable : Any] ){
//
//      let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyClinicAppointmentsVCNA") as! UINavigationController
//        vc.modalPresentationStyle = .fullScreen
//        view.show(vc, sender: self)
//
//
//    }
//
//
//    func convertStringToDictionary(text: String) -> [String:AnyObject]? {
//        if let data = text.data(using: .utf8) {
//            do {
//                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:AnyObject]
//                return json
//            } catch {
//                print("Something went wrong")
//            }
//        }
//        return nil
//    }
}


