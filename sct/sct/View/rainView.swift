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
            VStack{
                Text("01 / 08")
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
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
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
