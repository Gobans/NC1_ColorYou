//
//  startView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI
struct startView: View {
    @State var gotoView2 = false
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
            Text("미국 심리학자 Tom Maddron의 living your colors를 기반으로 한 심리테스트입니다.")
                .padding(EdgeInsets(top: 48, leading: 32, bottom: 0, trailing: 32))
            BubbleMove()
            
            Button(action: {
                gotoView2 = true
            }){
                Text("테스트 시작하기")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 180, trailing: 0))
            }
            .background(NavigationLink(
                destination: rainView(gotostartView: $gotostartView),
                isActive: $gotoView2,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)

        }

    }
}

struct startView_Previews: PreviewProvider {
    static var previews: some View {
        startView(gotostartView: .constant(false) )
    }
}
