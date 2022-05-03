//
//  typingView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct typingView: View {
    @State var gotoView4 = false
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
                Text("02 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                LottieTyping(filename: "Typing")
                    .frame(height:320)
                    .onAppear(perform: {
                        PlayBGM.playSounds(soundfile: "TypingSound.m4a")
                    })

            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("A   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("열심히 일하고 있다")
                            .frame(maxWidth:160,alignment: .leading)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("B   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("격분하여 말싸움 중이다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("C   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("잘 짜여진 글을 쓰고있다")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView4 = true
                    PlayBGM.audioPlayer?.stop()
                }) {
                    ZStack{
                        Text("D   | ")
                            .frame(maxWidth:280,alignment: .leading)
                        Text("새롭게 배운 툴을 즐기고 있다")
                            .frame(maxWidth:220,alignment: .trailing)
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: doorView(gotostartView: $gotostartView),
                    isActive: $gotoView4,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct typingView_Previews: PreviewProvider {
    static var previews: some View {
        typingView(gotostartView: .constant(false))
    }
}
