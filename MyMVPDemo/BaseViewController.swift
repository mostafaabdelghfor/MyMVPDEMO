//
//  BaseViewController.swift
//  Youmeda
//
//  Created by Mohamed on 1/9/21.
//

import UIKit
//import Crisp

class BaseViewController: UIViewController {

    var labelError = UILabel()
    var viewError = UIView()
    var btnRetry = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableDarkMode()
        hideKeyboardWhenTappedAround()
        addBackgroundImage()
        initErrorView()
        addKershImage()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        enableBackGesture()
        navigationController?.isNavigationBarHidden = true
    }
    
    func addBackgroundImage() {
        let imageBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        imageBackground.contentMode = .scaleAspectFill
        imageBackground.backgroundColor = .fromHex(hex: "F3FBFF")
//        imageBackground.image = #imageLiteral(resourceName: "backmob")
        view.insertSubview(imageBackground, at: 0)
    }
    
    func addKershImage() {
        let imageKersh = UIImageView()
        let extractedExpr = #imageLiteral(resourceName: "Rectangle 1018")
        imageKersh.image = extractedExpr
        view.insertSubview(imageKersh, at: 1)
        
        imageKersh.translatesAutoresizingMaskIntoConstraints = false
        imageKersh.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageKersh.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        imageKersh.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        viewHeader.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func initHeader(title: String, menu: Bool = false, home: Bool = true, hideBack: Bool = false) {
        navigationController?.navigationBar.isHidden = true
        let viewHeader = UIView()
        viewHeader.backgroundColor = .clear
        view.insertSubview(viewHeader, at: 2)
        
        viewHeader.translatesAutoresizingMaskIntoConstraints = false
        viewHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        viewHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        viewHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        viewHeader.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        createTitle(viewHeader, title: title)
        if menu {
            createMenuBtn(viewHeader)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
//                AppMenuHandler.instance.initMenu(self)
            }
        } else {
            if !hideBack {
                createBackBtn(viewHeader)
            }
        }
        if home {
            createHomeIcon(viewHeader)
        }
    }
    
    func createHomeIcon(_ viewHeader: UIView) {
        let viewHome = UIView()
        viewHome.backgroundColor = .clear
        viewHome.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(home)))
        viewHeader.addSubview(viewHome)
        
        viewHome.translatesAutoresizingMaskIntoConstraints = false
        viewHome.topAnchor.constraint(equalTo: viewHeader.topAnchor).isActive = true
        viewHome.trailingAnchor.constraint(equalTo: viewHeader.trailingAnchor).isActive = true
        viewHome.bottomAnchor.constraint(equalTo: viewHeader.bottomAnchor).isActive = true
        viewHome.widthAnchor.constraint(equalTo: viewHome.heightAnchor).isActive = true
        
        let imageViewHome = UIImageView()
        imageViewHome.image = #imageLiteral(resourceName: "chat_21").imageFlippedForRightToLeftLayoutDirection()
        imageViewHome.contentMode = .scaleAspectFit
        viewHome.addSubview(imageViewHome)
        
        imageViewHome.translatesAutoresizingMaskIntoConstraints = false
        imageViewHome.topAnchor.constraint(equalTo: viewHome.topAnchor, constant: 16).isActive = true
        imageViewHome.leadingAnchor.constraint(equalTo: viewHome.leadingAnchor, constant: 16).isActive = true
        imageViewHome.trailingAnchor.constraint(equalTo: viewHome.trailingAnchor, constant: -16).isActive = true
        imageViewHome.bottomAnchor.constraint(equalTo: viewHeader.bottomAnchor, constant: -16).isActive = true
        
//        let labelHome = GTLabel()
//        labelHome.text = "Home".localize
//        labelHome.textColor = .titleColor
//        labelHome.textAlignment = .center
//        labelHome.font = labelHome.font.withSize(15)
//        viewHome.addSubview(labelHome)
        
//        labelHome.translatesAutoresizingMaskIntoConstraints = false
//        labelHome.leadingAnchor.constraint(equalTo: viewHome.leadingAnchor).isActive = true
//        labelHome.trailingAnchor.constraint(equalTo: viewHome.trailingAnchor).isActive = true
//        labelHome.heightAnchor.constraint(equalTo: viewHeader.heightAnchor, multiplier: 0.5).isActive = true
//        labelHome.topAnchor.constraint(equalTo: imageViewHome.bottomAnchor).isActive = true
//        labelHome.bottomAnchor.constraint(equalTo: viewHome.bottomAnchor, constant: -8).isActive = true
    }
    
    @objc func home() {
//        UIView.setAnimationsEnabled(true)
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        if let nav = appDelegate.window!.rootViewController as? UINavigationController {
//            var index = 0
//            for (i, controller) in nav.viewControllers.enumerated() {
//                if controller is MainTabsViewController {
//                    index = i
//                    break
//                }
//            }
//            nav.popToViewController(nav.viewControllers[index], animated: true)
//        }
//        NotificationCenter.default.post(name: .openHomeTab, object: nil)
        UIView.setAnimationsEnabled(true)
//        let vc = ChatViewController()
//        if let loadedPerson =  UserDefaults.standard.decode(for: userSaved.self , using: "PatientData") {
//            CrispSDK.user.email = loadedPerson.Email ?? ""
//            CrispSDK.user.nickname = loadedPerson.name ?? ""
//            CrispSDK.user.phone = loadedPerson.Phone ?? ""
//        }
//        self.present(vc, animated: true)
    }
    
    func createTitle(_ viewHeader: UIView, title: String) {
        let labelTitle = GTLabel()
        labelTitle.text = title
        labelTitle.textColor = .titleColor
        labelTitle.textAlignment = .center
        labelTitle.font = labelTitle.font.withSize(20)
        viewHeader.addSubview(labelTitle)
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.centerYAnchor.constraint(equalTo: viewHeader.centerYAnchor).isActive = true
        labelTitle.centerXAnchor.constraint(equalTo: viewHeader.centerXAnchor).isActive = true

        labelTitle.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    func createBackBtn(_ viewHeader: UIView) {
        let viewBack = UIView()
        viewBack.backgroundColor = .clear
        viewBack.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(back)))
        viewHeader.addSubview(viewBack)
        
        viewBack.translatesAutoresizingMaskIntoConstraints = false
        viewBack.topAnchor.constraint(equalTo: viewHeader.topAnchor).isActive = true
        viewBack.leadingAnchor.constraint(equalTo: viewHeader.leadingAnchor).isActive = true
        viewBack.bottomAnchor.constraint(equalTo: viewHeader.bottomAnchor).isActive = true
        viewBack.widthAnchor.constraint(equalTo: viewBack.heightAnchor).isActive = true
        
        let imageViewBack = UIImageView()
        imageViewBack.image = #imageLiteral(resourceName: "icons8-left-24").imageFlippedForRightToLeftLayoutDirection()
        imageViewBack.contentMode = .scaleAspectFit
        viewBack.addSubview(imageViewBack)
        
        imageViewBack.translatesAutoresizingMaskIntoConstraints = false
        imageViewBack.leadingAnchor.constraint(equalTo: viewBack.leadingAnchor, constant: 8).isActive = true
        imageViewBack.centerYAnchor.constraint(equalTo: viewBack.centerYAnchor).isActive = true
        imageViewBack.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func back() {
        UIView.setAnimationsEnabled(true)
        navigationController?.popViewController(animated: true)
    }
    
    func createMenuBtn(_ viewHeader: UIView) {
        let viewMenu = UIView()
        viewMenu.backgroundColor = .clear
        viewMenu.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openMenu)))
        viewHeader.addSubview(viewMenu)
        
        viewMenu.translatesAutoresizingMaskIntoConstraints = false
        viewMenu.topAnchor.constraint(equalTo: viewHeader.topAnchor).isActive = true
        viewMenu.leadingAnchor.constraint(equalTo: viewHeader.leadingAnchor).isActive = true
        viewMenu.bottomAnchor.constraint(equalTo: viewHeader.bottomAnchor).isActive = true
        viewMenu.widthAnchor.constraint(equalTo: viewMenu.heightAnchor).isActive = true
        
        let imageViewMenu = UIImageView()
        imageViewMenu.image = #imageLiteral(resourceName: "icons8-menu-26 (1)").imageFlippedForRightToLeftLayoutDirection()
        imageViewMenu.contentMode = .scaleAspectFit
        viewMenu.addSubview(imageViewMenu)
        
        imageViewMenu.translatesAutoresizingMaskIntoConstraints = false
        imageViewMenu.leadingAnchor.constraint(equalTo: viewMenu.leadingAnchor, constant: 8).isActive = true
        imageViewMenu.centerYAnchor.constraint(equalTo: viewMenu.centerYAnchor).isActive = true
        imageViewMenu.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func openMenu() {
        UIView.setAnimationsEnabled(true)
        AppMenuHandler.instance.openMenu(self)
    }
    
    func initErrorView() {
        viewError.backgroundColor = .clear
        view.insertSubview(viewError, at: 3)
        
        viewError.translatesAutoresizingMaskIntoConstraints = false
        viewError.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        viewError.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        viewError.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        viewError.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        let viewAnimation = UIView()
        viewError.addSubview(viewAnimation)
        LottieGifHandler.instance.playGif(view: viewAnimation, name: "38213-error")
        
        viewAnimation.translatesAutoresizingMaskIntoConstraints = false
        viewAnimation.topAnchor.constraint(equalTo: viewError.topAnchor, constant: 40).isActive = true
        viewAnimation.centerXAnchor.constraint(equalTo: viewError.centerXAnchor).isActive = true
        viewAnimation.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewAnimation.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        labelError.textColor = .gray
        labelError.numberOfLines = 0
        labelError.textAlignment = .center
        labelError.font = UIFont(name: FONT_SEMIBOLD, size: 15)
        viewError.addSubview(labelError)
        
        labelError.translatesAutoresizingMaskIntoConstraints = false
        labelError.topAnchor.constraint(equalTo: viewAnimation.bottomAnchor, constant: 20).isActive = true
        labelError.leadingAnchor.constraint(equalTo: viewError.leadingAnchor, constant: 20).isActive = true
        labelError.trailingAnchor.constraint(equalTo: viewError.trailingAnchor, constant: -20).isActive = true
        
        btnRetry.titleLabel?.textColor = .white
        btnRetry.backgroundColor = .titleColor
        btnRetry.titleLabel?.font = UIFont(name: FONT_REGULAR, size: 17)
        btnRetry.layer.cornerRadius = 25
        btnRetry.makeShadow(color: .black, alpha: 0.14, radius: 4)
        btnRetry.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(retry)))
        btnRetry.setTitle("retry".localize, for: .normal)
        viewError.addSubview(btnRetry)
        
        btnRetry.translatesAutoresizingMaskIntoConstraints = false
        btnRetry.topAnchor.constraint(equalTo: labelError.bottomAnchor, constant: 20).isActive = true
        btnRetry.leadingAnchor.constraint(equalTo: labelError.leadingAnchor).isActive = true
        btnRetry.trailingAnchor.constraint(equalTo: labelError.trailingAnchor).isActive = true
        btnRetry.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        viewError.isHidden = true
    }
    
    @objc func retry() {
        viewError.isHidden = true
    }
    
    func showError(message: String, showRetry: Bool = true) {
        viewError.isHidden = false
        labelError.text = message
        btnRetry.isHidden = !showRetry
    }
}

extension BaseViewController {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

}

import SideMenu

//extension HomeViewController: UISideMenuNavigationControllerDelegate {
//
//    func sideMenuDidDisappear(menu: UISideMenuNavigationController, animated: Bool) {
//        disableBackGesture()
//    }
//}
