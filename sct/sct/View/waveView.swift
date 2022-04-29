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
        let highfudge = 0.98
        
        let newpercent = lowfudge + (highfudge - lowfudge) * percent
        let waveHeight = 0.015 * rect.height
        let yoffset = CGFloat(1 - newpercent) * (rect.height - 4 * waveHeight) + 2 * waveHeight
        let startAngle = offset
        let endAngle = offset + Angle(degrees: 365)
        
        p.move(to: CGPoint(x: 0, y: yoffset + waveHeight * CGFloat(sin(offset.radians))))
        
        for angle in stride(from: startAngle.degrees, through: endAngle.degrees, by: 5) {
            let x = CGFloat((angle - startAngle.degrees) / 360) * rect.width
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
            Spacer()
            Button(action: {
                gotoView5 = true
            }){
                Text("다음 씬")
            }
            .background(NavigationLink(
                destination: doorView(gotostartView: $gotostartView),
                isActive: $gotoView5,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
            ZStack{
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
            .navigationBarTitle("", displayMode: .automatic)
            .navigationBarHidden(true)
        }.ignoresSafeArea(.container, edges: .bottom)
    }
}

struct waveView_Previews: PreviewProvider {
    static var previews: some View {
        waveView(gotostartView: .constant(false))
    }
}
