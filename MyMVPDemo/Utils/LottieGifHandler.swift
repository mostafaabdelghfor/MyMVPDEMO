//
//  LottieGifHandler.swift
//  FakahanySwift
//
//  Created by MiNi Mac on 10/9/18.
//  Copyright © 2018 MiNi Mac. All rights reserved.
//

import Foundation
import Lottie

class LottieGifHandler {
    
    static let instance = LottieGifHandler()
    
    private init() { }
    
    func playGif(view: UIView, name: String, playOnce: Bool = false) {
        for view in view.subviews {
            view.removeFromSuperview()
        }
        let viewAnimation = LOTAnimationView(name: name)
    
        viewAnimation.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        viewAnimation.contentMode = .scaleAspectFill
        viewAnimation.frame = view.bounds
        
        view.addSubview(viewAnimation)
        viewAnimation.loopAnimation = !playOnce
        viewAnimation.play()
    }
    
    func playGif(view: UIView, name: String, fromProgress: CGFloat, toProgress: CGFloat) {
        for view in view.subviews {
            view.removeFromSuperview()
        }
        let viewAnimation = LOTAnimationView(name: name)
        viewAnimation.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        viewAnimation.contentMode = .scaleAspectFill
        viewAnimation.frame = view.bounds
        viewAnimation.animationSpeed = 2
        view.addSubview(viewAnimation)
        viewAnimation.play(fromProgress: fromProgress,
                           toProgress: toProgress,
                           withCompletion: nil)
    }
    
    func playGifWithoutRemoveView(view: UIView, name: String, fromProgress: CGFloat, toProgress: CGFloat) {
        let viewAnimation = LOTAnimationView(name: name)
        viewAnimation.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        viewAnimation.contentMode = .scaleAspectFill
        viewAnimation.frame = view.bounds
        viewAnimation.animationSpeed = 2
        view.addSubview(viewAnimation)
        viewAnimation.play(fromProgress: fromProgress,
                           toProgress: toProgress,
                           withCompletion: nil)
    }
}
