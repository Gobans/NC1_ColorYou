//
//  ContentView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/28.
//

import SwiftUI


struct ContentView: View {
    @State var gotoView3 = false
    @Binding var gotostartView: Bool
    var body: some View {
        ZStack{
            Text("some")
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gotostartView: .constant(false))
    }
}
