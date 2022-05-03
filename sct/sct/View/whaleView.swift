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
    var body: some View {
        VStack{
                Text("05 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieWhale(filename: "Whale")
                .frame(height:320)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "WhaleSound.mp3")
                })
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView8 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("보트 밑으로 고래가 지나가고 있다")
                            .frame(maxWidth:240,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: burningView(gotostartView: $gotostartView),
                    isActive: $gotoView8,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView8 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("다른 고래에게 도움을 요청하고 있다")
                            .frame(maxWidth:270,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: burningView(gotostartView: $gotostartView),
                    isActive: $gotoView8,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView8 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("어디로 가야할지 의논하고있다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: burningView(gotostartView: $gotostartView),
                    isActive: $gotoView8,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView8 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("레이스 대결을 하고있다")
                            .frame(maxWidth:200,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: burningView(gotostartView: $gotostartView),
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

struct seaView_Previews: PreviewProvider {
    static var previews: some View {
        whaleView(gotostartView: .constant(false))
    }
}
