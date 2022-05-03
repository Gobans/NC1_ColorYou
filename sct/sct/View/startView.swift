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
    @Binding var gotostartView: Bool
    var body: some View {
            ZStack{
                Text("미국 심리학자 Tom Maddron의 living your colors를 기반으로 한 심리테스트입니다.")
                    .frame(alignment:.top)
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 32, bottom: 600, trailing: 32))
                BubbleMove()
                    .frame(height:520)
                    .onAppear(perform:{
                        PlayBGM.playSounds(soundfile: "MorningRoutine.mp3")
                    })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 0))
                Button(action: {
                    gotoView2 = true
                    PlayBGM.audioPlayer?.stop()
                })
                {
                    Text("테스트 시작하기")
                }
                .buttonStyle(GrowingButton())
                .padding(EdgeInsets(top: 400, leading: 0, bottom: 0, trailing: 0))
                .background(NavigationLink(
                    destination: waveView(gotostartView: $gotostartView),
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
