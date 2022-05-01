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
                Text("07 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            Image(systemName: "flame.fill")
                .font(.system(size: 200))
                .foregroundColor(Color.red)
                .frame(width: 300,height:320)
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView9 = true
                    
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: bubbleView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: bubbleView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: bubbleView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView9 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: bubbleView(gotostartView: $gotostartView),
                    isActive: $gotoView9,
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

struct burningView_Previews: PreviewProvider {
    static var previews: some View {
        burningView(gotostartView: .constant(false))
    }
}
