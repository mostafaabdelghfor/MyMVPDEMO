////
////  AppAudioHandler.swift
////  Youmeda
////
////  Created by mohamed elmaazy on 25/05/2021.
////
//
//import Foundation
//import SwiftySound
//
//class AppAudioHandler {
//    
//    static let instance = AppAudioHandler()
//    private init() { }
//    
//    func playAudio(fileName: String, fileExtension: String = "mp3", numberOfLoops: Int = 1) {
//        stop()
//        Sound.play(file: fileName, fileExtension: fileExtension, numberOfLoops: numberOfLoops)
//    }
//    
//    func stop() {
//        Sound.stopAll()
//    }
//    
//    func doctorRinging() {
//        playAudio(fileName: "WhatsAppAudio", fileExtension: "mpeg", numberOfLoops: 0)
//    }
//    
//    func step() {
//        playAudio(fileName: "steps", fileExtension: "mp3", numberOfLoops: 0)
//    }
//    
//    func waiting() {
//        playAudio(fileName: "waiting", fileExtension: "mp3", numberOfLoops: 10)
//    }
//    
//    func openPopup() {
//        playAudio(fileName: "Interface Pop Up", fileExtension: "mp3", numberOfLoops: 0)
//    }
//    
//    func confirmSelect() {
//        playAudio(fileName: "confirm_select", fileExtension: "mp3", numberOfLoops: 0)
//    }
//    
//    func select() {
//        playAudio(fileName: "select", fileExtension: "mp3", numberOfLoops: 0)
//    }
//    
//    func shortSwipe() {
//        playAudio(fileName: "Short Swipe", fileExtension: "mp3", numberOfLoops: 0)
//    }
//    
//    func finishPoint() {
//        playAudio(fileName: "finish_point", fileExtension: "mp3", numberOfLoops: 0)
//    }
//}
