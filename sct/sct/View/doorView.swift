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
            Button(action: {
                gotoView6 = true
            }){
                Text("다음 씬")
            }
            .background(NavigationLink(
                destination: streetView(gotostartView: $gotostartView),
                isActive: $gotoView6,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            LottieOpenDoor(filename: "OpenDoor")
                .frame(width:400,height: 400)
        }
    }
}

struct doorView_Previews: PreviewProvider {
    static var previews: some View {
        doorView(gotostartView: .constant(false))
    }
}
