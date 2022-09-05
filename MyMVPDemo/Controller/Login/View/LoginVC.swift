//
//  LoginVC.swift
//  Youmeda
//
//  Created by Khabeer on 1/10/21.
//

import UIKit
import GoogleSignIn
import AuthenticationServices
import MOLH

class LoginVC: BaseViewController  {

    @IBOutlet weak var googleView: RoundUIView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordUiview: RoundUIView!
    @IBOutlet weak var emailPhoneUiview: RoundUIView!
    @IBOutlet weak var viewFacebook: RoundUIView!
    @IBOutlet weak var loginSubTitle: UILabel!
    @IBOutlet weak var ForgrtPassword: UIButton!
    @IBOutlet weak var userNameIcon: UIImageView!
    @IBOutlet weak var passwordIcon: UIImageView!
    @IBOutlet weak var btnLogin: UIButton!
    
    var socialId = ""
    var socialType = ""
    var name = ""
    var email = ""
    var comingWithCode401: Bool?
    var data: UserDTO?
    var presenter: LoginVCPresenter!
    var cameFromReservation = false
    var openMedicalFile = false
    
    init(cameFromReservation: Bool, openMedicalFile: Bool = false) {
        super.init(nibName: "LoginVC", bundle: nil)
        self.cameFromReservation = cameFromReservation
        if cameFromReservation {
            comingWithCode401 = true
        }
        self.openMedicalFile = openMedicalFile
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        presenter = LoginVCPresenter(view: self)
        presenter.viewDidLoad()
    }
    
    func initViews() {
        initHeader(title: "login".localize)
        hideKeyboardWhenTappedAround()
        if MOLHLanguage.isArabic() {
            loginSubTitle.textAlignment = .right
            usernameTF.textAlignment = .right
            passwordTF.textAlignment = .right
            passwordUiview.semanticContentAttribute = .forceRightToLeft
            emailPhoneUiview.semanticContentAttribute = .forceRightToLeft
            ForgrtPassword.semanticContentAttribute = .forceRightToLeft
            userNameIcon.semanticContentAttribute = .forceRightToLeft
        } else {
            loginSubTitle.textAlignment = .left
            usernameTF.textAlignment = .left
            passwordTF.textAlignment = .left
            passwordUiview.semanticContentAttribute = .forceLeftToRight
            emailPhoneUiview.semanticContentAttribute = .forceLeftToRight
            ForgrtPassword.semanticContentAttribute = .forceLeftToRight
            userNameIcon.semanticContentAttribute = .forceLeftToRight
        }
        emailPhoneUiview.setShadowLight()
        passwordUiview.setShadowLight()
        googleView.setShadowLight()
        viewFacebook.setShadowLight()

        if #available(iOS 11.0, *) {
            usernameTF.smartInsertDeleteType = .no
        }
        usernameTF.autocorrectionType = .yes
        usernameTF.keyboardType = .numberPad
        usernameTF.textContentType = UITextContentType.telephoneNumber
        usernameTF.validateNumber()
        passwordTF.validateNumber()
        passwordTF.addTarget(self, action: #selector(didChangeText(field:)), for: .editingChanged)
        btnLogin.layer.cornerRadius = 20
    }
    
    @objc func didChangeText(field: UITextField) {
        if ((field.text?.containsNonEnglishNumbers) != nil) {
            field.text = field.text?.english
        }
    }
    
    @IBAction func forgetPasswordCliked(_ sender: Any) {
        navigateToForgetPasswordScreen()
    }
    
    @IBAction func loginWithGoogleCliked(_ sender: Any) {
//        let googalInstance = APPGoogalSocialLogin.instance
//        googalInstance.openGoogal(from: self)
//        googalInstance.responseClosure = {(response:GIDGoogleUser?) in
//            self.socialType = "0"
//            self.socialId = response!.userID
//            self.name = response!.profile.name
//            self.email = response!.profile.email
////            self.usernameTF.text = self.name
////            self.passwordTF.text = self.email
//            self.makeLogin(name: response!.userID, password: "SocialP@$$w0rdIs123", socialId: self.socialId)
//        }
    }
    
    @IBAction func loginWithFaceBookCliked(_ sender: Any) {
//        let instance = FacebookSocialLogin.instance
//        instance.openFacebook(from: self)
//        instance.responseClosure = {(response:[String:Any]?) in
//            if let userData = response {
//                self.socialType = "0"
//                self.socialId = userData["id"] as! String
//                self.name = userData["first_name"] as? String   ?? ""
//                if let last_name = userData["last_name"] {
//                    self.name += " "
//                    self.name += last_name as! String
//                }
//                if userData["email"] != nil {
//                    self.email = userData["email"] as? String ?? ""
//                }
//                self.makeLogin(name: userData["id"] as! String, password: "SocialP@$$w0rdIs123", socialId: self.socialId)
//            }
//        }
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        if usernameTF.text != "" && passwordTF.text != "" {
            if (usernameTF.text?.count ?? 0 < 11) {
//                AppPopUpHandler.instance.initHintPopUp(container: self, message:  MOLHLanguage.isArabic() ? "يجب ان يكون رقم الهاتف ١١ رقم" : "The Phone Number Should Be 11 Number")
            } else {
                makeLogin(name: usernameTF.text!, password: passwordTF.text!, socialId: "")
            }
        } else {
//            AppPopUpHandler.instance.initHintPopUp(container: self, message:   MOLHLanguage.isArabic() ? "ادخل كلمه السر و رقم الهاتف" : "Please Enter phone number and password")
//       erk4jjodwedweer
            //sdhfhfsdf
        
        }
    }
    
    func makeLogin(name: String, password: String , socialId:String) {
        presenter.makeLogin(name: name.trimmed , password: password , socialId: socialId, cameFromReservation: cameFromReservation, callMedicalApi: openMedicalFile)
    }
    
    @IBAction func register(_ sender: Any) {
        navigateToRegisterScreen(withParams: false)
    }
}

extension LoginVC : LoginView {
    func navigateToVerification(mobileNumber: String, password: String) {
        print("=========== goTo Verification Screen ================")
//        self.navigationController?.pushViewController(VerifyPhoneViewController(phone: mobileNumber, type: .register, password: password, cameFromReservation: cameFromReservation, openMedicalFile: openMedicalFile), animated: true)
    }
    
    func navigateToRegisterScreen(withParams: Bool) {
        if(withParams){
            print("=========== goTo Register Screen with Params  ================")
//            self.navigationController?.pushViewController(RegisterViewController(socialType: self.socialType, socialId: self.socialId, email: self.email, name: self.name, cameFromReservation: cameFromReservation, openMedicalFile: openMedicalFile) , animated: true)
        } else {
            print("=========== goTo Register Screen without Params  ================")
//            self.navigationController?.pushViewController(RegisterViewController(cameFromReservation: cameFromReservation, openMedicalFile: openMedicalFile) , animated: true)
        }
    }
    
    func navigateToHomeScreen() {
        
        print("=========== goTo Home Screen ================")
        if backFromLogin {
            navigationController?.popViewController(animated: true)
        } else {
//            self.navigationController?.pushViewController(MainTabsViewController() , animated: true)
        }
    }
    
    func navigateToVC(vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func navigateToForgetPasswordScreen() {
//        self.navigationController!.pushViewController(ForgotPasswordViewController(openMedicalFile: openMedicalFile), animated: true)
    }
    
    func showError(error: String) {
//        AppPopUpHandler.instance.initHintPopUp(container: self, message: error )
    }
    
    func fetchingLoginDataSuccess() {
        
    }
}
