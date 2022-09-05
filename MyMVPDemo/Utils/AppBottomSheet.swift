//
//  AppOpenBottomSheet.swift
//  Youmeda
//
//  Created by mohamed elmaazy on 02/10/2021.
//

import Foundation
import FittedSheets

class AppBottomSheet {
    
    static let instance = AppBottomSheet()
    private init() { }
    
    var sheet: SheetViewController?
    
//    func openDemo(parent: UIViewController, vc: PharmacyProductsDetailsViewController) {
//        let useInlineMode = parent.view != nil
//                
//        sheet = SheetViewController(
//            controller: vc,
//            sizes: [.fixed(parent.view.frame.height * 0.4), .fixed(parent.view.frame.height * 0.6), .fixed(parent.view.frame.height * 0.9)],
//            options: SheetOptions(useInlineMode: useInlineMode))
////        sheet.allowPullingPastMaxHeight = false
////        sheet.allowPullingPastMinHeight = false
////
////        sheet.dismissOnPull = true
////        sheet.dismissOnOverlayTap = true
////        sheet.overlayColor = UIColor.clear
////
////        sheet.contentViewController.view.layer.shadowColor = UIColor.black.cgColor
////        sheet.contentViewController.view.layer.shadowOpacity = 0.1
////        sheet.contentViewController.view.layer.shadowRadius = 10
////        sheet.allowGestureThroughOverlay = true
//        sheet!.handleScrollView(vc.scrollView)
//        addSheetEventLogging(to: sheet!)
//        
//        
//        if let view = parent.view {
//            sheet!.animateIn(to: view, in: parent)
//        } else {
//            parent.present(sheet!, animated: true, completion: nil)
//        }
//    }
//    
    func closeSheet() {
        guard let sheet = sheet else { return }
        sheet.animateOut()
    }
    
    func addSheetEventLogging(to sheet: SheetViewController) {
        let previousDidDismiss = sheet.didDismiss
        sheet.didDismiss = {
            print("did dismiss")
            previousDidDismiss?($0)
        }
        
        let previousShouldDismiss = sheet.shouldDismiss
        sheet.shouldDismiss = {
            print("should dismiss")
            return previousShouldDismiss?($0) ?? true
        }
        
        let previousSizeChanged = sheet.sizeChanged
        sheet.sizeChanged = { sheet, size, height in
            print("Changed to \(size) with a height of \(height)")
            previousSizeChanged?(sheet, size, height)
        }
    }
}
