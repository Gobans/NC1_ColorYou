import SwiftUI
import LottieUI

public struct BubbleMove: View {
    
    let state1 = LUStateData(type: .loadedFrom(URL(string: "https://assets6.lottiefiles.com/packages/lf20_1s3nvwk9.json")!), speed: 0.9, loopMode: .autoReverse)
    let state2 = LUStateData(type: .loadedFrom(URL(string: "https://assets2.lottiefiles.com/packages/lf20_hlyvzwsf.json")!), speed: 1.1, loopMode: .loop)
    let state3 = LUStateData(type: .loadedFrom(URL(string: "https://assets6.lottiefiles.com/packages/lf20_dldoq5vm.json")!), speed: 0.95, loopMode: .autoReverse)

    public init() {}
    public var body: some View {
        ZStack {
                LottieView(state: state1)
                    .blendMode(.screen)
                    .rotationEffect(Angle(degrees: CGFloat.random(in: -360...360)))
                    .scaleEffect(CGFloat.random(in: 0.7...1.0))
                LottieView(state: state2)
                    .blendMode(.darken)
                    .rotationEffect(Angle(degrees: CGFloat.random(in: -360...360)))
                    .scaleEffect(CGFloat.random(in: 0.7...1.0))
                LottieView(state: state3)
                    .blendMode(.screen)
                    .rotationEffect(Angle(degrees: CGFloat.random(in: -360...360)))
                    .scaleEffect(CGFloat.random(in: 0.7...1.0))
        }
    }
}

struct P227_Bubble_Previews: PreviewProvider {
    static var previews: some View {
        BubbleMove()
    }
}
