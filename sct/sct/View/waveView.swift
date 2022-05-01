//
//  waveView.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI

struct Wave: Shape {
    
    var offset: Angle
    var percent: Double
    
    var animatableData: Double {
        get { offset.degrees }
        set { offset = Angle(degrees: newValue) }
    }
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        // empirically determined values for wave to be seen
        // at 0 and 100 percent
        let lowfudge = 0.02
        let highfudge = 1.4
        
        let newpercent = lowfudge + (highfudge - lowfudge) * percent
        let waveHeight = 0.015 * rect.height
        let yoffset = CGFloat(1 - newpercent) * (rect.height - 4 * waveHeight) + 2 * waveHeight
        let startAngle = offset
        let endAngle = offset + Angle(degrees: 500)
        
        p.move(to: CGPoint(x: 0, y: yoffset + waveHeight * CGFloat(sin(offset.radians))))
        
        for angle in stride(from: startAngle.degrees, through: endAngle.degrees, by: 5) {
            let x = CGFloat((angle - startAngle.degrees) / 365) * rect.width
            p.addLine(to: CGPoint(x: x, y: yoffset + waveHeight * CGFloat(sin(Angle(degrees: angle).radians))))
        }
        
        p.addLine(to: CGPoint(x: rect.width, y: rect.height))
        p.addLine(to: CGPoint(x: 0, y: rect.height))
        p.closeSubpath()
        
        return p
    }
}

struct waveView: View {
    @State var gotoView5 = false
    @Binding var gotostartView: Bool
    @State private var waveOffset = Angle(degrees: 0)
    let percent = 100
    var body: some View {
        VStack{
                Text("04 / 08")
                    .padding()
                Text("이 소리를 들으면")
                    .font(.title2)
                Text("어떤 생각이 떠오르나요?")
                    .font(.title2)
                LottieBeach(filename: "Beach")
                    .frame(height:320)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
            //button
            VStack(spacing: 50){
                Button(action: {
                    gotoView5 = true
                    
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
                Button(action: {
                    gotoView5 = true
                }) {
                    HStack{
                        Text("A   | ")
                            .frame(alignment: .leading)
                        Text("sometext")
                    }
                }
                .buttonStyle(LongSelctButton())
                .background(NavigationLink(
                    destination: streetView(gotostartView: $gotostartView),
                    isActive: $gotoView5,
                    label: {EmptyView()}
                )
                    .isDetailLink(false)
                )
            }
        }
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
}

struct waveView_Previews: PreviewProvider {
    static var previews: some View {
        waveView(gotostartView: .constant(false))
    }
}
