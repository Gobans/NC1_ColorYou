//
//  IntroView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI
import AVFoundation

struct IntroView: View {
    @State var gotoStartView = false
    let LottieCircleWaveView = LottieCircleWave(filename: "CircleWave")
    var body: some View {
        NavigationView {
            ZStack{
                LottieCircleWaveView
                    .onAppear(perform: {
                        LottieCircleWaveView.animationView.play()
                        PlayBGM.playSounds(soundfile: "IntroSound.mp3")
                    })
                Button(action: {
                    gotoStartView = true
                    PlayBGM.audioPlayer?.stop()
                }){
                    
                    VStack(spacing:10){
                        Text("들어가기")
                            .foregroundColor(Color.black)
                            .font(.title)
                        Text("소리를 켜주세요")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                    }
                }
                .background(NavigationLink(
                    destination: startView(gotostartView: $gotoStartView),
                    isActive: $gotoStartView,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        }
    }
}

//struct IntroView_Previews: PreviewProvider {
//    static var previews: some View {
//        IntroView()
//    }
//}
