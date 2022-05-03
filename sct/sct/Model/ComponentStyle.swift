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
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

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
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)

    }
}

struct FatSelctButton2: ButtonStyle
{
    var backgroundColor : Color = .gray
    var ConerRadius: CGFloat = 10
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.black)
            .background(RoundedRectangle(cornerRadius: ConerRadius)
                .fill(.white)
                .frame(width: 326, height: 74)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
                .opacity(0.5)
            )
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)

    }
}


struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.init(red: 96/255, green: 175/255, blue: 255/255))
            .cornerRadius(20)
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
