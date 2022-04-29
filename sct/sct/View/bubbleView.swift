//
//  bubbleView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct bubbleView: View {
    @Binding var gotostartView: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct bubbleView_Previews: PreviewProvider {
    static var previews: some View {
        bubbleView(gotostartView: .constant(false))
    }
}
