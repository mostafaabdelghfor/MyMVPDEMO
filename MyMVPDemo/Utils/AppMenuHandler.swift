//
//  MenuHandler.swift
//  1Pharmacy
//
//  Created by mohamed elmaazy on 5/31/18.
//  Copyright © 2018 mohamed elmaazy. All rights reserved.
//

import Foundation
import SideMenu
import MOLH

class AppMenuHandler {
    
    static let instance = AppMenuHandler()
    private init() { }
//    
//    func initMenu(_ viewController: UIViewController) {
//        let nav = UISideMenuNavigationController.init(rootViewController: MenuViewController())
//        nav.isNavigationBarHidden = true
//        if MOLHLanguage.isArabic() {
//            SideMenuManager.default.menuRightNavigationController = nav
//            SideMenuManager.default.menuLeftNavigationController = nil
//        } else {
//            SideMenuManager.default.menuLeftNavigationController = nav
//            SideMenuManager.default.menuRightNavigationController = nil
//        }
//        SideMenuManager.default.menuFadeStatusBar = false
//        SideMenuManager.default.menuPresentMode = .menuSlideIn
//        SideMenuManager.default.menuAnimationFadeStrength = CGFloat(0.7)
//        SideMenuManager.default.menuWidth = viewController.view.layer.frame.width  * 3 / 4
//    }
    
    func openMenu(_ viewController: UIViewController) {
        if MOLHLanguage.isArabic() {
            viewController.present(SideMenuManager.default.menuRightNavigationController!, animated: true, completion: nil)
        } else {
            viewController.present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
        }
    }
}
