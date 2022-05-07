//
//  seaView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct whaleView: View {
    @State var gotoView8 = false
    @Binding var gotostartView: Bool
    @State var userScore : Score
    @State var clickGuide = false
    let LottieWhaleView = LottieWhale(filename: "Whale")
    var body: some View {
        ZStack{
            VStack{
                    Text("05 / 08")
                        .padding()
                    Text("이 소리를 들으면")
                        .font(.title2)
                    Text("어떤 생각이 떠오르나요?")
                        .font(.title2)
                ZStack{
                    LottieWhaleView
                        .frame(height:320)
                        .onTapGesture {
                            PlayBGM.playSoundsOnce(soundfile: "WhaleSound.mp3")
                            clickGuide = true
                            LottieWhaleView.animationView.play()
                            
                        }
                    if !clickGuide{
                        LottieClick(filename: "Click")
                            .frame(width: 150, height: 150)
                            .onTapGesture {
                                PlayBGM.playSoundsOnce(soundfile: "WhaleSound.mp3")
                                clickGuide = true
                                LottieWhaleView.animationView.play()
                            }
                    }
                }

                //button
                VStack(spacing: 50){
                    Button(action: {
                        gotoView8 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "B")
                    }) {
                        ZStack{
                            Text("A   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("다른 고래에게 도움을 요청하고 있다")
                                .frame(maxWidth:270,alignment: .trailing)

                        }
                    }
                    .buttonStyle(LongSelctButton())
                    .background(NavigationLink(
                        destination: burningView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView8,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView8 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "D")
                    }) {
                        ZStack{
                            Text("B   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("고래들끼리 레이스 대결을 하고있다")
                                .frame(maxWidth:260,alignment: .trailing)
                        }
                    }
                    .buttonStyle(LongSelctButton())
                    .background(NavigationLink(
                        destination: burningView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView8,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView8 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "C")
                    }) {
                        ZStack{
                            Text("C   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("어디로 가야할지 의논하고있다")
                                .frame(maxWidth:200,alignment: .trailing)
                        }
                    }
                    .buttonStyle(LongSelctButton())
                    .background(NavigationLink(
                        destination: burningView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView8,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView8 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "A")
                    }) {
                        ZStack{
                            Text("D   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("보트 밑으로 고래가 지나가고 있다")
                                .frame(maxWidth:240,alignment: .trailing)
                        }
                    }
                    .buttonStyle(LongSelctButton())
                    .background(NavigationLink(
                        destination: burningView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView8,
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
}

struct seaView_Previews: PreviewProvider {
    static var previews: some View {
        whaleView(gotostartView: .constant(false),userScore: Score())
    }
}
