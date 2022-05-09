//
//  typingView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct typingView: View {
    @State var gotoView4 = false
    @Binding var gotostartView: Bool
    let LottieTypingView = LottieTyping(filename: "Typing")
    @State var userScore : Score
    @State var clickGuide = false
    var body: some View {
        VStack{
                Text("02 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            ZStack{
                LottieTypingView
                    .frame(height:320)
                    .onTapGesture {
                        HapticManager.instance.impact(style: .light)
                        PlayBGM.playSoundsOnce(soundfile: "TypingSound.mp3")
                        LottieTypingView.animationView.play()
                        clickGuide = true
                    }
                if !clickGuide{
                    LottieClick(filename: "Click")
                        .frame(width: 150, height: 150)
                        .onTapGesture {
                            HapticManager.instance.impact(style: .light)
                            PlayBGM.playSoundsOnce(soundfile: "TypingSound.mp3")
                            LottieTypingView.animationView.play()
                            clickGuide = true
                        }
                }
            }
            //button
            VStack(spacing: 50){
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "B")
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("격분하여 말싸움 중이다")
 
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "C")
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("잘 짜여진 글을 쓰고있다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "A")
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("열심히 일하고 있다")
                            .frame(maxWidth:160,alignment: .leading)
 
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "D")
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("새롭게 배운 툴을 즐기고 있다")
                            .frame(maxWidth:220,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct typingView_Previews: PreviewProvider {
    static var previews: some View {
        typingView(gotostartView: .constant(false),userScore: Score())
    }
}
