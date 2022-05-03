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
            LottieBubble(filename: "Bubble")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("08 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                Spacer()
                    .frame(height:88)
                VStack(spacing:90){
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                    Button(action: {
                        gotoView3 = true
                        
                    }) {
                        HStack{
                            Text("A   | ")
                                .frame(alignment: .leading)
                            Text("sometext")
                        }
                    }
                    .buttonStyle(FatSelctButton2())
                    .background(NavigationLink(
                        destination: typingView(gotostartView: $gotostartView),
                        isActive: $gotoView3,
                        label: {EmptyView()}
                    )
                        .isDetailLink(false)
                    )
                }            .padding(EdgeInsets(top: 0, leading: 0, bottom: 130, trailing: 0))
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gotostartView: .constant(false))
    }
}
