//
//  startView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI
import AVFoundation

struct startView: View {
    @State var gotoView2 = false
    @State var firstGuide = false
    @State var textGuide = "클릭해보세요!"
    @State var textGuide2 = "소리를 들을 수 있어요"
    @Binding var gotostartView: Bool
    @State var userScore = Score()
    
    var body: some View {
            ZStack{
                Text("미국 심리학자 Tom Maddron의 living your colors를 기반으로 한 심리테스트입니다.")
                    .frame(alignment:.top)
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 32, bottom: 670, trailing: 32))

                BubbleMove()
                    .frame(height:520)
                    .onAppear(perform:{
                        PlayBGM.playSounds(soundfile: "MorningRoutine.mp3")
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
                if !firstGuide{
                    LottieClick(filename: "Click")
                        .frame(width: 150, height: 150)
                }
                VStack(spacing:10){
                    Text(textGuide)
                    Text(textGuide2)
                }
                .padding(EdgeInsets(top: 0, leading: 32, bottom: 480, trailing: 32))

                

                Button(action: {
                }){

                }
                .frame(width: 110, height: 110)
                .buttonStyle(BubbleButton())
                .background(Circle()
                    .opacity(0.00001)
                    .onTapGesture {
                        PlayBGM2.playSoundsOnce(soundfile: "BubbleSound.mp3")
                        HapticManager.instance.impact(style: .light)
                        firstGuide = true
                        textGuide = "좋아요! 테스트 때 방금처럼"
                        textGuide2 = "터치 애니메이션이 있다면 클릭해주세요"
                    }
                )
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 0))
                
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView2 = true
                    userScore.resetScore()
                    PlayBGM.audioPlayer?.stop()
                })
                {
                    Text("테스트 시작하기")
                }
                .buttonStyle(GrowingButton())
                .padding(EdgeInsets(top: 400, leading: 0, bottom: 0, trailing: 0))
                .background(NavigationLink(
                    destination: waveView(gotostartView: $gotostartView,userScore: userScore),
                    isActive: $gotoView2,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                .navigationBarTitle("", displayMode: .automatic)
                .navigationBarHidden(true)
            }
    }
}

struct startView_Previews: PreviewProvider {
    static var previews: some View {
        startView(gotostartView: .constant(false) )
    }
}
