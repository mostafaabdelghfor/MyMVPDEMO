//
//  ScrollViewExtension.swift
//  Youmeda
//
//  Created by Khabeer on 1/16/21.
//

import UIKit
extension UIScrollView {

    func scrollToBottom(animated: Bool) {
        if self.contentSize.height < self.bounds.size.height { return }
        let bottomOffset = CGPoint(x: 0, y: self.contentSize.height - self.bounds.size.height)
        self.setContentOffset(bottomOffset, animated: animated)
    }
    
    func scrollToTop(animated: Bool) {
        let topOffset = CGPoint(x: 0, y: 0)
        self.setContentOffset(topOffset, animated: animated)
    }
} 
