//
//  burningView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct burningView: View {
    @State var gotoView9 = false
    @Binding var gotostartView: Bool
    @State var userScore : Score
    var body: some View {
        ZStack{
            LottieBurning(filename: "Burning")
                .frame(width:620,height:820)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "BurningSound.mp3")
                })
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 90, trailing: 0))
            VStack(spacing:330){
                VStack{
                    Text("06 / 08")
                        .foregroundColor(Color.white)
                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 10, trailing: 0))
                    Text("이 소리를 들으면")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    Text("어떤 생각이 떠오르나요?")
                        .font(.title2)
                        .foregroundColor(Color.white)
                }
                VStack(spacing: 50){
                    Button(action: {
                        HapticManager.instance.impact(style: .medium)
                        gotoView9 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "A")
                    }) {
                        ZStack{
                            Text("A   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("따스한 온기")
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: rainView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView9,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        HapticManager.instance.impact(style: .medium)
                        gotoView9 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "B")
                    }) {
                        ZStack{
                            Text("B   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("진실된 시간")
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: rainView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView9,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        HapticManager.instance.impact(style: .medium)
                        gotoView9 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "C")
                    }) {
                        ZStack{
                            Text("C   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("재정비")
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: rainView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView9,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        HapticManager.instance.impact(style: .medium)
                        gotoView9 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "D")
                    }) {
                        ZStack{
                            Text("D   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("향기로운 고기냄새")
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: rainView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView9,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
        .background(Color.init(red: 59/255, green: 67/255, blue: 128/255)).ignoresSafeArea(.all)
    }
}

struct burningView_Previews: PreviewProvider {
    static var previews: some View {
        burningView(gotostartView: .constant(false),userScore: Score())
    }
}
