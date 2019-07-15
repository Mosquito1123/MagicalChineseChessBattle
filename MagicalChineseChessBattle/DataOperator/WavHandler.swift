//
//  WavHandler.swift
//  MagicalChineseChessBattle
//
//  Created by Mosquito1123 on 15/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit
import AVFoundation

class WavHandler: NSObject {
    
    private static let bgm = ResourcesProvider.shared.wav(named: "BGM")
    
    public class func playBGM(isLaunch: Bool = false) {
        if UserPreference.shared.playBGM {
            self.bgm?.currentTime = isLaunch ? 48.0 : 0.0
            self.bgm?.numberOfLoops = -1
            
            let audioSession = AVAudioSession.sharedInstance()
            if #available(iOS 10.0, *) {
                try? audioSession.setCategory(.soloAmbient, mode: .default)
            } else {
                // Fallback on earlier versions
            }
            try? audioSession.setActive(true)
            
            self.bgm?.play()
        } else {
            self.bgm?.stop()
            
            let audioSession = AVAudioSession.sharedInstance()
            if #available(iOS 10.0, *) {
                try? audioSession.setCategory(.ambient, mode: .default)
            } else {
                // Fallback on earlier versions
            }
            try? audioSession.setActive(true)
        }
    }
    
    public class func playButtonWav() {
        AudioServicesPlaySystemSound(1104)
    }
    
    private class func playWav(named: String) {
        let wav = ResourcesProvider.shared.wav(named: named)
        wav?.numberOfLoops = 0
        wav?.play()
    }
    
    public class func playVoice(state: LunaMoveState) {
        switch state {
        case .select:
            self.playWav(named: "select")
        case .normal:
            self.playWav(named: "run")
        case .eat:
            self.playWav(named: "eat")
        case .check:
            self.playWav(named: "check")
        case .checkMate:
            self.playWav(named: "mate")
        case .eatCheck:
            self.playWav(named: "eat")
            self.playWav(named: "check")
        case .eatCheckMate:
            self.playWav(named: "eat")
            self.playWav(named: "mate")
            
        @unknown default:
            break
        }
    }
    
}
