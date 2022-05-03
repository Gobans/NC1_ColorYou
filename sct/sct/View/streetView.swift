//
//  streetView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct streetView: View {
    @State var gotoView7 = false
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
                Text("04 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieStreet(filename: "Street")
                .frame(height:320)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "StreetSound.mp3")
                })
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView7 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("넘어진 아이를 일으켜 준다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("골목의 벽화가 마음을 사로잡는다")
                            .frame(maxWidth:260,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        VStack{
                            Text("음식점을 가기위해 지도를 보고있다")
                            .frame(maxWidth:290,alignment: .trailing)
                        }
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView7 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("길거리 공연이 한창이다")
                            .frame(maxWidth:180,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: whaleView(gotostartView: $gotostartView),
                    isActive: $gotoView7,
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

struct streetView_Previews: PreviewProvider {
    static var previews: some View {
        streetView(gotostartView: .constant(false))
    }
}
