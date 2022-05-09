//
//  OpenDoor.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import Lottie
import SwiftUI
 
struct LottieRain: UIViewRepresentable {
    
    typealias UIViewType = UIView
    //5.
    var filename: String
    
    
    //1. Context -> UIViewRepresentableContext<LottieView>로 수정
    func makeUIView(context: UIViewRepresentableContext<LottieRain>) -> UIView {
        //3.
        let view = UIView(frame: .zero)
        //4. Add animation
        let animationView = AnimationView()
        //사용자 애니메이션 파일명
        animationView.animation = Animation.named(filename)
        //애니메이션 크기가 적절하게 조정될 수 있도록
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        
        animationView.animationSpeed = 1
        //애니메이션 재생
        animationView.play()
        
        //컨테이너의 너비와 높이를 자동으로 지정할 수 있도록
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        //5. 자동완성 기능
        NSLayoutConstraint.activate([
            //레이아웃의 높이와 넓이의 제약
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        
        return view
    }
    //2. Context -> UIViewRepresentableContext<LottieView>로 수정
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieRain>) {
        // do nothing
    }
    
}
