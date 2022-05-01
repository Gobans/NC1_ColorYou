//
//  bubbleView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct bubbleView: View {
    @State var gotoView10 = false
    @Binding var gotostartView: Bool
    @State var scale : CGFloat = 1
    let rouge = Color(red: 0.23, green: 0.05, blue: 0.14)
    var body: some View {
        ZStack {
            VStack{
                Text("08 / 08")
                    .padding()
                    .foregroundColor(Color.white)
                Text("이 소리를 들으면")
                    .font(.title2)
                    .foregroundColor(Color.white)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 88)
                VStack(spacing: 90){
                    Button(action: {
                        gotoView10 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView10 = true
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton())
                    .background(NavigationLink(
                        destination: nameView(gotostartView: $gotostartView),
                        isActive: $gotoView10,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                }
                
            }
            ForEach (1...50, id:\.self) { _ in
                Circle ()
                    .foregroundColor(Color (red: .random(in: 0.3...1),
                                            green: 0.1,
                                            blue: .random(in: 0.3...1)))
                
                    .blendMode(.colorDodge) // The bottom circle is lightened by an amount determined by the top layer
                    .animation (Animation.spring (dampingFraction: 0.5)
                        .repeatForever()
                        .speed (.random(in: 0.05...0.4))
                        .delay(.random (in: 0...1)), value: scale
                    )
                
                    .scaleEffect(self.scale * .random(in: 0.1...3))
                    .frame(width: .random(in: 1...100),
                           height: CGFloat.random (in:20...100),
                           alignment: .center)
                    .position(CGPoint(x: .random(in: 0...1112),
                                      y: .random (in:0...834)))
            }
        }
        .onAppear {
            self.scale = 1.2 // default circle scale
        }
        .drawingGroup(opaque: false, colorMode: .linear)
        .background(
            Rectangle()
                .foregroundColor(rouge))
        .ignoresSafeArea()
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct bubbleView_Previews: PreviewProvider {
    static var previews: some View {
        bubbleView(gotostartView: .constant(false))
    }
}
