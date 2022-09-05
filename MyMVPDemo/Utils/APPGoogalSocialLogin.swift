//
//  APPGoogalSocialLogin.swift
//  FakahanySwift
//
//  Created by Ahmed gamal on 10/10/18.
//  Copyright © 2018 MiNi Mac. All rights reserved.
//

import Foundation
//import GoogleSignIn

//public typealias GoogalClosure = (GIDGoogleUser?) -> Void
//
//class APPGoogalSocialLogin: NSObject, GIDSignInDelegate {
//    
//    static let instance = APPGoogalSocialLogin ()
//    private var controller = UIViewController()
//    public var responseClosure:GoogalClosure?
//    private override init () {}
//    
//    func  openGoogal (from:UIViewController) {
//        
//        GIDSignIn.sharedInstance().clientID = "89066888992-paghcdgk2se5euko5b1v90g5jsci1ou5.apps.googleusercontent.com"
//        GIDSignIn.sharedInstance().delegate = self
//        GIDSignIn.sharedInstance()?.presentingViewController = from
//        controller = from
////        GIDSignIn.sharedInstance().uiDelegate = self
//        GIDSignIn.sharedInstance().signIn()
//    }
//    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if (error == nil) {
//            self.responseClosure?(user!)
//            // Perform any operations on signed in user here.
////            SocialID = user.userID
////            self.user_name_social = user.profile.name
////            self.email_social = user.profile.email
////            self.sendDataToServer(type: "socialGo")
//            
//        } else {
//            print("\(error.localizedDescription)")
//        }
//    }
//    
//    // Present a view that prompts the user to sign in with Google
//    func sign(_ signIn: GIDSignIn!, present viewController: UIViewController!) {
//        controller.present(viewController, animated: true, completion: nil)
//    }
//    
//    func sign(_ signIn: GIDSignIn!, dismiss viewController: UIViewController!) {
//        controller.dismiss(animated: true, completion: nil)
//    }
//}
