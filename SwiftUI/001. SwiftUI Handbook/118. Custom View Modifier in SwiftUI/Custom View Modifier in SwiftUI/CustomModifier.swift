//
//  CustomModifier.swift
//  Custom View Modifier in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

import SwiftUI

enum ShadowStyle {
    case small
    case medium
    case large
}

struct ShadowModifier: ViewModifier {
    var shadowStyle: ShadowStyle

    func body(content: Content) -> some View {
        switch shadowStyle {
        case .small:
            content
                .shadow(color: .black.opacity(0.05), radius: 2.5, x: 0, y: 5)
                .shadow(color: .black.opacity(0.03), radius: 1, x: 0, y: 2)
                .shadow(color: .black.opacity(0.03), radius: 0, x: 0, y: 1)
        case .medium:
            content
                .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 8)
                .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 4)
                .shadow(color: .black.opacity(0.03), radius: 0, x: 0, y: 1)
        case .large:
            content
                .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 10)
                .shadow(color: .black.opacity(0.4), radius: 3, x: 0, y: 6)
                .shadow(color: .black.opacity(0.4), radius: 0, x: 0, y: 1)
        }
    }
}

extension View  {
    func shadows(_ size: ShadowStyle = .small) -> some View {
        self.modifier(ShadowModifier(shadowStyle: size))
    }
}
