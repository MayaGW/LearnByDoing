//
//  PlaySound.swift
//  LearnByDoing
//
//  Created by Maya Ghamloush on 08/03/2024.
//

import Foundation
import AVFoundation

//MARK: - AUDIOPLAYER

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Could not play any sound ")
        }
    }
}

