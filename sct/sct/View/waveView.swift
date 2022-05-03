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
    @State private var waveOffset = Angle(degrees: 0)
    let percent = 100
    var body: some View {
        VStack{
                Text("01 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                LottieBeach(filename: "Beach")
                    .frame(height:320)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView5 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("해변에 누워 햇살을 즐긴다")
                            .frame(maxWidth:190,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("노을과 함께 파도가 진다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("파도 앞 모래성을 세우고 있다")
                            .frame(maxWidth:230,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: typingView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                    PlayBGM.audioPlayer?.stop()
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
                    destination: typingView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
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

struct waveView_Previews: PreviewProvider {
    static var previews: some View {
        waveView(gotostartView: .constant(false))
    }
}
