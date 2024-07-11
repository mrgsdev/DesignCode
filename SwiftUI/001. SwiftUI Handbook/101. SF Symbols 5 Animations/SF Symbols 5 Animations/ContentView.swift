//
//  ContentView.swift
//  SF Symbols 5 Animations
//
//  Created by mrgsdev on 04.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "wand.and.rays")
                .symbolEffect(.variableColor.iterative.reversing)
            Image(systemName: "bell")
//                .symbolEffect(.bounce, value: isTapped)
                .symbolEffect(.bounce, options: .speed(2).repeat(2), value: isTapped)
            Image(systemName: "magnifyingglass")
//                .symbolEffect(.scale.up, isActive: isTapped)
                .symbolEffect(.variableColor.iterative.reversing, options: .speed(3))
            Image(systemName: isTapped ? "pause.fill" : "play.fill")
                .contentTransition(.symbolEffect(.replace))
        }
        .font(.largeTitle)
        .onTapGesture {
            isTapped.toggle()
        }
        .foregroundStyle(.primary, .blue)
    }
}

#Preview {
    ContentView()
}
