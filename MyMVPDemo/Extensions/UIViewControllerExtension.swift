//
//  UIViewControllerExtension.swift
//  Pharmacist
//
//  Created by mohamed elmaazy on 7/9/18.
//  Copyright © 2018 Ahmed gamal. All rights reserved.
//

import Foundation
import UIKit
import NVActivityIndicatorView
import MobileCoreServices

extension UIViewController: UIGestureRecognizerDelegate {

    #if DEBUG
    @objc func injected() {
        view.setNeedsDisplay()
    }
    #endif
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func shareTextInSocial(_ text:String){
        let textShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textShare , applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.excludedActivityTypes = [UIActivity.ActivityType.airDrop]
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    func call(phoneNumber:String) {
        if let mobileCallUrl = URL(string: "tel://\(phoneNumber)") {
            let application = UIApplication.shared
            if application.canOpenURL(mobileCallUrl) {
                if #available(iOS 10.0, *) {
                    application.open(mobileCallUrl, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(mobileCallUrl)
                }
            } else {
                let alert = UIAlertController(title: "Alert", message: "Can't make call", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        print("default")
                        
                    case .cancel:
                        print("cancel")
                        
                    case .destructive:
                        print("destructive")
                    }}))
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "Alert", message: "Can't make call", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func openWebsite(url:String) {
        if let mobileCallUrl = URL(string: url) {
            let application = UIApplication.shared
            if application.canOpenURL(mobileCallUrl) {
                UIApplication.shared.open(URL(string : url)!, options: [:], completionHandler: { (status) in
                })
            } else {
                let alert = UIAlertController(title: "Alert", message: "Can't open this site", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        print("default")
                        
                    case .cancel:
                        print("cancel")
                        
                    case .destructive:
                        print("destructive")
                    }}))
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "Alert", message: "Can't open this site", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                }}))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func enableBackGesture() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func disableBackGesture() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    //    func showAlart(message:String){
    //        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
    //        alert.addAction(UIAlertAction(title: AppLanguageHandler.instance.getStringForKey(key: AppConstant.instance.OK), style: .default, handler: { action in
    //        }))
    //        self.present(alert, animated: true, completion: nil)
    //    }
    
    func updateConstraint(constraint: NSLayoutConstraint, value: CGFloat) {
        constraint.constant = value * UIScreen.main.bounds.width / 360
        print("New constraint for: \(value) is: \(constraint.constant)")
        print(UIScreen.main.bounds.width)
    }
    
    func getRatio(_ number: CGFloat) -> CGFloat {
        let ratio = CGFloat(Int(number * UIScreen.main.bounds.width / 360))
        print(UIScreen.main.bounds.width)
        return ratio > 0 ? ratio : CGFloat(number * UIScreen.main.bounds.width / 360)
    }
    
    func disableDarkMode() {
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
    }
    
    func showFilePicker() {
        let types = [kUTTypePDF, kUTTypeText, kUTTypeRTF, kUTTypeSpreadsheet]
        let importMenu = UIDocumentPickerViewController(documentTypes: types as [String], in: .import)
        
        if #available(iOS 11.0, *) {
            importMenu.allowsMultipleSelection = true
        }
        importMenu.delegate = self as? UIDocumentPickerDelegate
        importMenu.modalPresentationStyle = .formSheet
        present(importMenu, animated: true)
    }
    
    func showToast(message : String) {
        let toastLabel = GTLabel(frame: CGRect(x: self.view.frame.size.width / 2 - 75, y: self.view.frame.size.height - 200, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
//        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

extension UIViewController: NVActivityIndicatorViewable {
    
    func showIndicator(_ show: Bool = true) {
        if show {
            let size = CGSize(width: getRatio(70), height: getRatio(70))
            startAnimating (size , type: .ballBeat, color: .white, padding: 10)
        } else {
            stopAnimating()
        }
    }
}
