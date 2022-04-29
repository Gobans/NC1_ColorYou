//
//  ContentView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    @State private var waveOffset = Angle(degrees: 0)
    let percent = 100
    var body: some View {
        GeometryReader { geo in
            Wave(offset: Angle(degrees: self.waveOffset.degrees), percent: Double(percent)/100)
                .fill(.blue)
        }
        .aspectRatio(1, contentMode: .fit)
        .onAppear {
            withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                self.waveOffset = Angle(degrees: 360)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
