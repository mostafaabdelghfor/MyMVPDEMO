//
//  AuthUrl.swift
//  Youmeda
//
//  Created by Mohamed on 1/9/21.
//

import Foundation

class AuthUrl {
    
    static let instance = AuthUrl()
    private init () {}
    
    fileprivate let AUTH_BASE_URL = "\(BASE_URL)Salamtak/"
    
    func getLogin() -> String {
        return "\(AUTH_BASE_URL)Login"
    }

    func sendCode() -> String {
        return "\(AUTH_BASE_URL)SendSms"
    }

    func forgetPassword() -> String {
        return "\(AUTH_BASE_URL)ForgetPassword"
    }
    
    func register() -> String {
        return "\(AUTH_BASE_URL)Register"
    }
    
    func activeUser() -> String {
        return "\(AUTH_BASE_URL)ActivateUser"
    }
    
    func editProfile() -> String {
        return "\(AUTH_BASE_URL)EditProfile"
    }
    
    func UpdatePassword() -> String {
        return "\(AUTH_BASE_URL)UpdatePassword"
    }
    
    func completeRegister() -> String {
        return "\(AUTH_BASE_URL)ActivateUser"
    }
    func checkCode() -> String {
        return "\(AUTH_BASE_URL)CheckCodeVerification"
    }
    func logout() -> String {
        return "\(AUTH_BASE_URL)Logout"
    }
}
