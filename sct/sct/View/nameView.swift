//
//  nameView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct nameView: View {
    @Binding var gotostartView: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct nameView_Previews: PreviewProvider {
    static var previews: some View {
        nameView(gotostartView: .constant(false))
    }
}
