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
    var body: some View {
        ZStack{
            LottieRain(filename: "Rain")
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    PlayBGM.playSounds(soundfile: "RainSound.mp3")
                })
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
                Spacer()
                    .frame(height:88)
                VStack(spacing:90){
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("A   | ")
                                .frame(maxWidth:280,alignment: .leading)

                            Text("약속 시간에 늦을까 걱정된다")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("B   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("편안하고 감성적인 작은집")
                                .frame(maxWidth:190,alignment: .leading)
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("C   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            VStack{
                                Text("거리에 펼쳐진 형형색색의 우산들")
                                    .frame(maxWidth:240,alignment: .trailing)
                            }

                        
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("D   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            VStack{
                                Text("한 사람이 팔을벌려 비를 맞고있다")
                                    .frame(maxWidth:250,alignment: .trailing)
                            }
                            
                            
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: bubbleView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                }            .padding(EdgeInsets(top: 0, leading: 0, bottom: 130, trailing: 0))
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct rainView_Previews: PreviewProvider {
    static var previews: some View {
        rainView(gotostartView: .constant(false))
    }
}
