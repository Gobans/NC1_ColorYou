//
//  ComponentStyle.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/29.
//

import SwiftUI
import Foundation

struct LongSelctButton: ButtonStyle
{
    var backgroundColor : Color = .gray
    var ConerRadius: CGFloat = 10
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.black)
            .background(RoundedRectangle(cornerRadius: ConerRadius)
                .fill(.white)
                .frame(width: 326, height: 33)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
            )
    }
}
