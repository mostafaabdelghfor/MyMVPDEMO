////
////  AppSocialLogin.swift
////  FakahanySwift
////
////  Created by Ahmed gamal on 10/9/18.
////  Copyright © 2018 MiNi Mac. All rights reserved.
////
//
//import Foundation
//import FBSDKLoginKit
//
//public typealias FBClosure = ([String:Any]?) -> Void
//
//class FacebookSocialLogin {
//    
//    static let instance = FacebookSocialLogin()
//    public var responseClosure:FBClosure?
//    private init() { }
//    
//    func openFacebook (from:UIViewController) {
//        let fbLoginManager  = LoginManager()
//        fbLoginManager.logIn(permissions: ["public_profile", "email"], from: from) { (result, error) in
//            if (error == nil){
//                let fbloginresult : LoginManagerLoginResult = result!
//                if fbloginresult.grantedPermissions != nil {
//                    self.getUserData()
//                    fbLoginManager.logOut()
//                   
//                }
//            }
//        }
//    }
//    
//    private func getUserData ()  {
//        let params = ["fields": "id, first_name, last_name, name, email, picture"]
//        let graphRequest = GraphRequest(graphPath: "me", parameters: params)
//        let connection = GraphRequestConnection()
//        connection.add(graphRequest, completionHandler: { (connection, result, error) in
//            if error == nil {
//                self.responseClosure?(result as! [String:Any])
////                if let userData = result as? [String:Any] {
////                    //self.view.isUserInteractionEnabled = false
////                    self.socialID = userData["id"] as! String
////                    self.faceId = userData["id"] as! String
////                    self.social_name = userData["first_name"] as! String
////                    //                    self.last_name = userData["last_name"] as! String
////                    if userData["email"] != nil {
////                        self.email_social = userData["email"] as! String
////                    }
////                    self.makeLogin(type: "loginFB")
////                }
//            } else {
//                
////                AppSnackBarHandler.instance.showMessage(message: "Error Getting fields \(String(describing: error))")
//            }
//        })
//        connection.start()
//    }
//}
