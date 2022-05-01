//
//  ContentView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/28.
//

import SwiftUI

struct FatSelctButton: ButtonStyle
{
    var backgroundColor : Color = .gray
    var ConerRadius: CGFloat = 10
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.black)
            .background(RoundedRectangle(cornerRadius: ConerRadius)
                .fill(.white)
                .frame(width: 326, height: 74)
                .opacity(0.5)
            )

    }
}

struct ContentView: View {
    var body: some View {
        VStack{
            Button(action: {}) {
                HStack{
                    Text("A   | ")
                        .frame(alignment: .leading)
                    VStack{
                        Text("sometext")
                        Text("sometext")
                    }
 
                }
            }
            .buttonStyle(FatSelctButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
