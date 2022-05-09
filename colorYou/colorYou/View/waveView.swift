//
//  waveView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI
import AVFoundation

struct waveView: View {
    @State var gotoView5 = false
    @Binding var gotostartView: Bool
    let LottieBeachView = LottieBeach(filename: "Wave")
    @State var userScore : Score
    @State var clickGuide = false
    @State var textGuide = "이 소리를 들으면"
    @State var textGuide2 = "어떤 생각이 떠오르나요?"
    @State var wrongDirectionguide = false
    var body: some View {
        ZStack{
            ZStack{
                LottieBeachView
                    .frame(height:340)
                    .onTapGesture {
                        HapticManager.instance.impact(style: .light)
                        PlayBGM.playSoundsOnce(soundfile: "WaveSound.mp3")
                        clickGuide = true
                        textGuide = "이 소리를 들으면"
                        textGuide2 = "어떤 생각이 떠오르나요?"
                        wrongDirectionguide = false
                    }
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 160, trailing: 30))
                if !clickGuide{
                    LottieClick(filename: "Click")
                        .frame(width: 150, height: 150)
                        .onTapGesture {
                            HapticManager.instance.impact(style: .light)
                            PlayBGM.playSoundsOnce(soundfile: "WaveSound.mp3")
                            clickGuide = true
                            textGuide = "이 소리를 들으면"
                            textGuide2 = "어떤 생각이 떠오르나요?"
                            wrongDirectionguide = false
                        }
                }
            }
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 40, trailing: 0))
            VStack(spacing:330){
                VStack{
                    Text("01 / 08")
                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 10, trailing: 0))
                    Text(textGuide)
                        .font(.title2)
                        .foregroundColor(wrongDirectionguide ? Color.orange : Color.black)
                    Text(textGuide2)
                        .font(.title2)
                        .foregroundColor(wrongDirectionguide ? Color.orange : Color.black)
                }
                .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
            //button
            VStack(spacing: 50){
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    if !clickGuide{
                        wrongDirectionguide = true
                        textGuide = "화면을 클릭해주세요!"
                        textGuide2 = "소리가 나와요"
                    }else{
                        gotoView5 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "A")
                    }
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("잔잔한 파도를 바라본다")
                            .frame(maxWidth:160,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButtonWithWhiteBackground()
                )
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                .background(Color.white)
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    if !clickGuide{
                        wrongDirectionguide = true
                        textGuide = "화면을 클릭해주세요!"
                        textGuide2 = "소리가 나와요"
                    }else{
                        gotoView5 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "C")
                    }
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("파도 앞 모래성을 세우고 있다")
                            .frame(maxWidth:230,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView,userScore:userScore),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    if !clickGuide{
                        wrongDirectionguide = true
                        textGuide = "화면을 클릭해주세요!"
                        textGuide2 = "소리가 나와요"
                    }else{
                        gotoView5 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "B")
                    }
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("노을과 함께 파도가 진다")

                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView,userScore:userScore),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    if !clickGuide{
                        wrongDirectionguide = true
                        textGuide = "화면을 클릭해주세요!"
                        textGuide2 = "소리가 나와요"
                    }else{
                        gotoView5 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "D")
                    }
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("바다에 발을 담근다")
                            .frame(maxWidth:160,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView,userScore:userScore),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 0))
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct waveView_Previews: PreviewProvider {
    static var previews: some View {
        waveView(gotostartView: .constant(false), userScore: Score())
    }
}
