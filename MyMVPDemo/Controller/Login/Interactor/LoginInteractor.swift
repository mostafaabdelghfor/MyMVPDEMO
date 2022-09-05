//
//  LoginInteractor.swift
//  Youmeda
//
//  Created by Khabeer on 1/11/21.
//

import Foundation
class LoginInteractor {
    
    func makeLogin(name: String, password: String , socialId:String , completionHandler: @escaping (UserDTO?, String?) -> ()){
        var parameters = ["PushKey": "UserDefaults.standard.getFirebaseToken()",
                          "IME": "2"]
        if socialId == "" {
            parameters.updateValue(name, forKey: "MobileNumber")
            parameters.updateValue(password, forKey: "Password")
        } else {
            parameters.updateValue(name, forKey: "SocialKey")
            parameters.updateValue(password, forKey: "SocialPassword")
        }
        print(parameters)
        AppConnectionsHandler.post(url: AuthUrl.instance.getLogin(), params: parameters , headers: nil, type: UserDTO.self)
        { (status, model, error) in
            switch status {
            case .sucess:
                let model = model as! UserDTO
                completionHandler(model , nil)
            case .error:
                let error = error
                completionHandler(nil , error)
            }
        }
        
    }
}
