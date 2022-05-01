//
//  resultView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct resultView: View {
    @Binding var gotostartView: Bool
    var body: some View {
        VStack{
            Button("다시하기") {
                gotostartView = false
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView(gotostartView: .constant(false))
    }
}
