//
//  seaView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct seaView: View {
    @Binding var gotostartView: Bool
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct seaView_Previews: PreviewProvider {
    static var previews: some View {
        seaView(gotostartView: .constant(false))
    }
}
