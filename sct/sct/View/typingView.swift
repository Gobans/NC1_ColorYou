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
            Button(action: {
                gotoView4 = true
            }){
                Text("다음 씬")
            }
            .background(NavigationLink(
                destination: waveView(gotostartView: $gotostartView),
                isActive: $gotoView4,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
            
            TypingScene()
        }
    }
}

struct typingView_Previews: PreviewProvider {
    static var previews: some View {
        typingView(gotostartView: .constant(false))
    }
}
