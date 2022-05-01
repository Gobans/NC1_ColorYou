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
                Text("06 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieWhale(filename: "Whale")
                .frame(height:320)
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView8 = true
                    
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
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
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
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
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
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
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
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
    }
}

struct seaView_Previews: PreviewProvider {
    static var previews: some View {
        whaleView(gotostartView: .constant(false))
    }
}
