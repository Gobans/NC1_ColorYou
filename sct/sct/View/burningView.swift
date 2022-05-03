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
    var body: some View {
        VStack{
                Text("06 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieBurning(filename: "Burning")
                .frame(height:320)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "BurningSound.mp3")
                })
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView9 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("따스한 온기")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: rainView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("진실된 시간")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: rainView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("재정비")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: rainView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("향기로운 고기냄새")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: rainView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
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

struct burningView_Previews: PreviewProvider {
    static var previews: some View {
        burningView(gotostartView: .constant(false))
    }
}
