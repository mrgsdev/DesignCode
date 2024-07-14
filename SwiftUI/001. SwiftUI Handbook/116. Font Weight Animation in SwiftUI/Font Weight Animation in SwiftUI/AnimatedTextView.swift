//
//  AnimatedTextView.swift
//  Font Weight Animation in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

struct AnimatedTextView: View {
    var text = "Hello, World!"
    var animation: Animation = .easeInOut
    var targetFontSize: CGFloat = 40
    var minimumFontSize: CGFloat = 30
    var targetFontWeight: Font.Weight = .semibold
    var minimumFontWeight: Font.Weight = .ultraLight
    var targetFontWidth: Font.Width = .standard
    var minimumFontWidth: Font.Width = .compressed
    var delayBetweenSwitch: Double = 3
    var delayBetweenCharacter: Double = 2

    var toggle: Bool = false // Animation is triggered when this value is changed

    @StateObject private var fontSettings: FontSettings // Uses the FontSettings class

    init(_ text: String, toggle: Bool, animation: Animation = .easeInOut, targetFontSize: CGFloat = 40, minimumFontSize: CGFloat = 30, targetFontWeight: Font.Weight = .semibold, minimumFontWeight: Font.Weight = .ultraLight, targetFontWidth: Font.Width = .standard, minimumFontWidth: Font.Width = .compressed, delayBetweenSwitch: Double = 3, delayBetweenCharacter: Double = 2) {
        self.text = text
        self.toggle = toggle
        self.animation = animation
        self.targetFontSize = targetFontSize
        self.minimumFontSize = minimumFontSize
        self.targetFontWeight = targetFontWeight
        self.minimumFontWeight = minimumFontWeight
        self.targetFontWidth = targetFontWidth
        self.minimumFontWidth = minimumFontWidth
        self.delayBetweenSwitch = delayBetweenSwitch
        self.delayBetweenCharacter = delayBetweenCharacter
        _fontSettings = StateObject(wrappedValue: FontSettings(text: text, targetFontSize: targetFontSize, targetFontWeight: targetFontWeight, targetFontWidth: targetFontWidth))
    }

    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(characterIndices(text: text), id: \.index) { item in
                    Text(item.character)
                        .font(.system(size: fontSettings.fontSizes[item.index]))
                        .fontWidth(fontSettings.fontWidths[item.index])
                        .fontWeight(fontSettings.fontWeights[item.index])
                }
                .geometryGroup() // Make sure the characters are aligned when animation is playing
            }
        }
        .onChange(of: toggle) {
            toggleWholeAnimation()
        }
    }

    // Helper function to get characters and their indices
    func characterIndices(text: String) -> [(character: String, index: Int)] {
        var result: [(character: String, index: Int)] = []
        for (index, character) in text.enumerated() {
            result.append((String(character), index))
        }
        return result
    }

    // Whole bold-thin-bold animation toggle
    func toggleWholeAnimation() {
        Task {
            // First part of animation, the text will go thinner
            toggleAnimation()

            // Delay between two animations
            try? await Task.sleep(nanoseconds: 0_100_000_000 * UInt64(delayBetweenSwitch))

            // Second part of animation, the text will go to the original state
            toggleAnimation()
        }
    }

    // Toggle text to the opposite state
    func toggleAnimation() {
        Task {
            for index in fontSettings.fontWidths.indices {
                // Delay between each character
                try? await Task.sleep(nanoseconds: 0_100_000_000 * UInt64(delayBetweenCharacter) / UInt64(text.count))

                // Make text size, width and weight to the opposite
                withAnimation(animation) {
                    fontSettings.fontSizes[index] = fontSettings.fontSizes[index] == minimumFontSize ? targetFontSize : minimumFontSize
                    fontSettings.fontWidths[index] = fontSettings.fontWidths[index] == minimumFontWidth ? targetFontWidth : minimumFontWidth
                    fontSettings.fontWeights[index] = fontSettings.fontWeights[index] == minimumFontWeight ? targetFontWeight : minimumFontWeight
                }
            }
        }
    }
}

#Preview {
    AnimatedTextView("", toggle: false)
}
