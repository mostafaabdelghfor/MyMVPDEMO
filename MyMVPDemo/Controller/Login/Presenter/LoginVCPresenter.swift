//
//  LoginVCPresenter.swift
//  Youmeda
//
//  Created by Khabeer on 1/10/21.
//

import Foundation
import MOLH

protocol LoginView: class {
    func fetchingLoginDataSuccess()
    func showError(error: String)
    func navigateToForgetPasswordScreen()
    func navigateToRegisterScreen(withParams: Bool)
    func navigateToHomeScreen()
    func navigateToVerification(mobileNumber:String, password: String)
    func navigateToVC(vc: UIViewController)
}


class LoginVCPresenter {
    
    private weak var view: LoginVC?
    private let interactor = LoginInteractor()
    private var inReviewObj :SettingsResponseModel?
    private var data:UserDTO?

    init(view: LoginVC) {
        self.view = view
    }
    
    func viewDidLoad() {
        if IN_REVIEW == "1" {
            view?.viewFacebook.isHidden = true
            view?.googleView.isHidden = true
        }
    }
    
    func makeLogin(name: String, password: String , socialId:String, cameFromReservation: Bool, callMedicalApi: Bool) {
        view?.showIndicator(true)
        interactor.makeLogin(name: name, password: password, socialId: socialId) { [weak self] obj , error in
            guard let self = self else { return }
            self.view?.showIndicator(false)
            if ((obj?.Success ?? "false").boolValue) {
                if ((obj?.Code ?? "0") == "55") {
                    self.view?.navigateToRegisterScreen(withParams: true)
                } else {
                    let def = UserDefaults.standard
                    def.setDatabaseToken(obj?.Token ?? "")
                    let userSaveItem = userSaved(
                        Phone: obj?.user?.MobileNumber ,
                        name: "\(obj?.user?.FirstNameEn ?? "")",
                        OnlinePatientId: obj?.user?.Id,
                        ClassId: obj?.user?.ClassId,
                        HasInsurance: obj?.user?.HasInsurance,
                        Email: obj?.user?.Email,
                        gender: obj?.user?.Gender,
                        BirthDate: obj?.user?.BirthDate,
                        image: obj?.user?.PatientImage,
                        ClassNameAr: obj?.user?.ClassArabicName,
                        ClassNameEn: obj?.user?.ClassEnglishName,
                        id: obj?.user?.Id)
                    def.setDatabaseID(obj?.user?.Id ?? "")
                    let defaults = UserDefaults.standard
                    defaults.encode(for: userSaveItem, using: "PatientData")
                
                    if socialId != "" {
                        UserDefaults.standard.setSocialLogin("1")
                    } else {
                        UserDefaults.standard.setSocialLogin("")
                    }
                    
                    self.data = obj
                    def.setMobilenumberHasBeenVerfriedTrue(obj?.user?.PhoneNumberConfirmed ?? "")
                    if ((obj?.user?.PhoneNumberConfirmed ?? "false").boolValue) {
                        // if user make skip and need to make LAB Or RAd Request
                        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//                        if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//                            if(self.view?.comingWithCode401 ?? false){
//                                self.view?.comingWithCode401 = nil
//                                nav.popViewController(animated: true)
//                            } else {
//                                if callMedicalApi {
//                                    self.callGetMedicalFileReport()
//                                } else {
//                                    self.view?.navigateToHomeScreen()
//                                }
//                            }
//                        }
                        NotificationCenter.default.post(name: .loginDone, object: nil)
                    } else {
                        if socialId == "" {
                            self.confirmPhoneNumber(mobileNumber: name, password: password)
                        } else {
                            self.confirmPhoneNumber(mobileNumber: obj?.user?.MobileNumber ?? "", password: password)
                        }
                    }
                }
            } else {
                self.view?.showError(error: error ?? "Server Error")
            }
        }
    }
    
//    func callGetMedicalFileReport() {
//        view?.showIndicator(true)
//        AppConnectionsHandler.get(url: SalamtakUrl.instance.getPHRCriteria(), headers: GET_DEFAULT_HEADERS(), type: PHRCriteriaResponseModel.self) { (status, model, error) in
//            self.view?.showIndicator(false)
//            switch status {
//            case .sucess:
//                let model = model as! PHRCriteriaResponseModel
//                HasCronicDiseases = model.Data?.HasCronicDiseases ?? ""
//                HasMedications = model.Data?.HasMedications ?? ""
//                HasOperations = model.Data?.HasOperations ?? ""
//                HasInvestigations = model.Data?.HasInvestigations ?? ""
//                HasVitals = model.Data?.HasVitals ?? ""
//                if let vc = GET_PHR_PUSH_VIEW_CONTROLLER() {
//                    self.view?.navigateToVC(vc: vc)
//                } else {
//                    self.view?.navigateToHomeScreen()
//                }
//                break
//            case .error:
//                self.view?.navigateToHomeScreen()
//                break
//            }
//        }
//    }
//    
    func confirmPhoneNumber(mobileNumber:String, password: String){
        view?.navigateToVerification(mobileNumber: mobileNumber, password: password)
    }
}

extension String {
    
    var containsNonEnglishNumbers: Bool {
        return !isEmpty && range(of: "[^0-9]", options: .regularExpression) == nil
    }

    var english: String {
        return self.applyingTransform(StringTransform.toLatin, reverse: false) ?? self
    }
}







