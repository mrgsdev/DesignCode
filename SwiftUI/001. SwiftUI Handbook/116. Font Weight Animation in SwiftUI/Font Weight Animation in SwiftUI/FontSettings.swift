//
//  FontSettings.swift
//  Font Weight Animation in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI
class FontSettings: ObservableObject {
    @Published var fontSizes: [CGFloat]
    @Published var fontWeights: [Font.Weight]
    @Published var fontWidths: [Font.Width]

    init(text: String, targetFontSize: CGFloat, targetFontWeight: Font.Weight, targetFontWidth: Font.Width) {
        self.fontSizes = Array(repeating: targetFontSize, count: 100)
        self.fontWeights = Array(repeating: targetFontWeight, count: 100)
        self.fontWidths = Array(repeating: targetFontWidth, count: 100)
    }
}
