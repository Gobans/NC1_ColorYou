//
//  ComponetModifier.swift
//  sct
//
//  Created by Lee Myeonghwan on 2022/04/30.
//

import Foundation
import SwiftUI

struct SelectModifier: ViewModifier{
    @Binding var gotostartView : Bool
    @Binding var gotoview : Bool
    // @Binding var destinationView : View
    // Protocol 'View' can only be used as a generic constraint because it has Self or associated type requirements
    func body(content: Content) -> some View {
        content
            .background(NavigationLink(
                destination: streetView(gotostartView: $gotostartView),
                isActive: $gotoview,
                label: {EmptyView()}
            )
                .isDetailLink(false)
            )
    }
}
