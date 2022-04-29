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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView(gotostartView: .constant(false))
    }
}
