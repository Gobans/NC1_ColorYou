//
//  bubbleView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct bubbleView: View {
    @State var gotoView10 = false
    @Binding var gotostartView: Bool
    @State var scale : CGFloat = 1
    let rouge = Color(red: 0.23, green: 0.05, blue: 0.14)
    var body: some View {
        ZStack{
            LottieBubble(filename: "Bubble")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("08 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                Spacer()
                    .frame(height:88)
                VStack(spacing:90){
                    Button(action: {
                        gotoView10 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("A   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("낭만적이다")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("B   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("슬프다")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("C   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("멋지다")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                        PlayBGM.audioPlayer?.stop()
                    }) {
                        ZStack{
                            Text("D   | ")
                                .frame(maxWidth:280,alignment: .leading)
                            Text("박수 짝짝짝")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
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

struct bubbleView_Previews: PreviewProvider {
    static var previews: some View {
        bubbleView(gotostartView: .constant(false))
    }
}
