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
        VStack{
            Button(action: {
                gotoView3 = true
            }){
                Text("다음 씬")
            }
            .background(NavigationLink(
                destination: typingView(gotostartView: $gotostartView),
                isActive: $gotoView3,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)

        }
    }
}

struct rainView_Previews: PreviewProvider {
    static var previews: some View {
        rainView(gotostartView: .constant(false))
    }
}
