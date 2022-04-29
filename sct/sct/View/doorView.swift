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
            VStack{
                Text("04 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
            }
//            Button(action: {
//                gotoView6 = true
//            }){
//                Text("다음 씬")
//            }
//            .background(NavigationLink(
//                destination: streetView(gotostartView: $gotostartView),
//                isActive: $gotoView6,
//                label: {EmptyView()}
//            )
//                .isDetailLink(false)
//            )
            LottieOpenDoor(filename: "OpenDoor")
                .frame(height:320)
            //button
            VStack(spacing: 50){
                Button(action: {}) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                Button(action: {}) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                Button(action: {}) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                Button(action: {}) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
            }
        }
    }
}

struct doorView_Previews: PreviewProvider {
    static var previews: some View {
        doorView(gotostartView: .constant(false))
    }
}
