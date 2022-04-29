//
//  ContentView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button(action: {}) {
                HStack{
                    Text("A   | ")
                        .frame(alignment: .leading)
                    Text("sometext")
                }
            }
            .buttonStyle(LongSelctButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
