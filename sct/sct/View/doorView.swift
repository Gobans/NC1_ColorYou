//
//  doorView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct doorView: View {
    @State var gotoView6 = false
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
                Text("04 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            LottieOpenDoor(filename: "OpenDoor")
                .frame(height:320)
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView6 = true
                    
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView6 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView6,
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

struct doorView_Previews: PreviewProvider {
    static var previews: some View {
        doorView(gotostartView: .constant(false))
    }
}
