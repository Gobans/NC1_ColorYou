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
    @State var userScore : Score
    @State var userName : String = ""
    @State var userResult : String = ""
    @State var userResultModel : resultModel = resultModel(userResult: "Blue")
    var body: some View {
        VStack(spacing:50){
                Text("당신의 이름은 무엇인가요?")
                TextField("당신의 이름은?", text: $userName)
                Button(action: {
                    HapticManager.instance.impact(style: .medium)
                    gotoView11 = true
                    userResult = userScore.returnResult()
                    userResultModel = resultModel(userResult: userResult)
                }) {
                    Text("결과보기")
                }
                .buttonStyle(GrowingButton())
                .background(NavigationLink(
                    destination: resultView(gotostartView: $gotostartView,userName: userName,userResultModel: userResultModel),
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
        nameView(gotostartView: .constant(false),userScore: Score(),userResultModel: resultModel(userResult: "Blue"))
    }
}
