//
//  rainView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct rainView: View {
    @State var gotoView3 = false
    @Binding var gotostartView: Bool
    @State var userScore : Score
    var body: some View {
        ZStack{
            LottieRain(filename: "Rain")
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "RainSound.mp3")
                })
            VStack(spacing:320){
                VStack{
                    Text("07 / 08")
                        .padding()
                        .foregroundColor(Color.white)
                    Text("이 소리를 들으면")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    Text("어떤 생각이 떠오르나요?")
                        .font(.title2)
                        .foregroundColor(Color.white)
                }
                VStack(spacing:50){
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "D")
                    }) {
                        ZStack{
                            Text("A   | ")
                                .frame(maxWidth:280,alignment: .leading)
                                Text("아이들이 비를 맞으며 뛰놀고있다")
                                    .frame(maxWidth:240,alignment: .trailing)

                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "A")
                    }) {
                        ZStack{
                            Text("B   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("약속 시간에 늦을까 걱정된다")

                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "B")
                    }) {
                        ZStack{
                            Text("C   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("편안하고 감성적인 작은집")
                                .frame(maxWidth:190,alignment: .leading)
  


                        
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                        userScore.addScore(select: "C")
                    }) {
                        ZStack{
                            Text("D   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("거리에 펼쳐진 형형색색의 우산들")
                                .frame(maxWidth:240,alignment: .trailing)
                            
                        }
                    }
                    .buttonStyle(LongSelctButtonWithNoStroke())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView,userScore: userScore),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                }
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct rainView_Previews: PreviewProvider {
    static var previews: some View {
        rainView(gotostartView: .constant(false),userScore: Score())
    }
}
