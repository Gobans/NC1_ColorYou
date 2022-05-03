//
//  nameView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct nameView: View {
    @State var gotoView11 = false
    @Binding var gotostartView: Bool
    var body: some View {
            VStack{
                Text("당신의 이름은 무엇인가요?")
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                Button(action: {
                    gotoView11 = true
                }) {
                    Text("결과보기")
                }
                .buttonStyle(GrowingButton())
                .background(NavigationLink(
                    destination: resultView(gotostartView: $gotostartView),
                    isActive: $gotoView11,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
            .padding(30)
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
    }
}

struct nameView_Previews: PreviewProvider {
    static var previews: some View {
        nameView(gotostartView: .constant(false))
    }
}
