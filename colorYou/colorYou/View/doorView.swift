//
//  doorView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct doorView: View {
    @State var gotoView6 = false
    @Binding var gotostartView: Bool
    let LottieOpenDoorView = LottieOpenDoor(filename: "DoorOpen")
    @State var userScore : Score
    @State var clickGuide = false
    var body: some View {
        VStack{
                Text("03 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            ZStack{
                LottieOpenDoorView
                    .frame(height:320)
                    .onTapGesture {
                        HapticManager.instance.impact(style: .light)
                        LottieOpenDoorView.animationView.play()
                        PlayBGM.playSoundsOnce(soundfile: "DoorOpenSound.mp3")
                        clickGuide = true
                    }
                if !clickGuide{
                    LottieClick(filename: "Click")
                        .frame(width: 150, height: 150)
                        .onTapGesture {
                            HapticManager.instance.impact(style: .light)
                            PlayBGM.playSoundsOnce(soundfile: "DoorOpenSound.mp3")
                            LottieOpenDoorView.animationView.play()
                            clickGuide = true
                        }
                }
            }
            //button
            VStack(spacing: 50){
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "D")
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("무엇 때문인지 확인하러 간다")
                            .frame(maxWidth:210,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "B")
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("원치않은 침입을 당했다")
                            .frame(maxWidth:170,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "A")
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("기다리던 사람이 돌아왔다")
  
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView6 = true
                    PlayBGM.audioPlayer?.stop()
                    userScore.addScore(select: "C")
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("바람 때문에 열렸을 것이다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct doorView_Previews: PreviewProvider {
    static var previews: some View {
        doorView(gotostartView: .constant(false), userScore: Score())
    }
}
