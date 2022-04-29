//
//  IntroView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct IntroView: View {
    @State var gotoStartView = false
    var body: some View {
        NavigationView {
            Button(action: {
                gotoStartView = true
            }){
                ZStack{
                    VStack(spacing:10){
                        Text("들어가기")
                            .foregroundColor(Color.black)
                            .font(.title)
                        Text("소리를 켜주세요")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                    }
                    Circle()
                        .stroke(Color.gray,lineWidth: 3)
                        .padding(80)
                        .opacity(0.1)
                }
            }
            .background(NavigationLink(
                destination: startView(gotostartView: $gotoStartView),
                isActive: $gotoStartView,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
