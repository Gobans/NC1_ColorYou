//
//  PlayBGM.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/05/02.
//

import Foundation

import AVFoundation

struct PlayBGM {

   static var audioPlayer:AVAudioPlayer?

   static func playSounds(soundfile: String) {

       if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

           do{
               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.numberOfLoops = -1
               audioPlayer?.prepareToPlay()
               audioPlayer?.play()

           }catch {
               print("Error")
           }
       }
    }
    
    static func playSoundsOnce(soundfile: String) {

        if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()

            }catch {
                print("Error")
            }
        }
     }
 }

struct PlayBGM2 {

   static var audioPlayer:AVAudioPlayer?

   static func playSounds(soundfile: String) {

       if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

           do{
               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.numberOfLoops = -1
               audioPlayer?.prepareToPlay()
               audioPlayer?.play()

           }catch {
               print("Error")
           }
       }
    }
    
    static func playSoundsOnce(soundfile: String) {

        if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()

            }catch {
                print("Error")
            }
        }
     }
 }
