//
//  ContentView.swift
//  Font Weight Animation in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

//struct ContentView: View {
//    @State var text = "Hello, World!"
//    @State var targetFontWeight: Font.Weight = .bold
//    @State var minimumFontWeight: Font.Weight = .ultraLight
//    @State var animation: Animation = .bouncy
//    @State var toggle = true
//    
//    var body: some View {
//        VStack {
//            AnimatedTextView(text, toggle: toggle, animation: animation, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight)
//            Button("Toggle") {
//                toggle.toggle()
//            }
//            .buttonStyle(.borderedProminent)
//            .controlSize(.extraLarge)
//        }
//        .padding(30)
//    }
//}
/// Version 2
struct ContentView: View {
    @State var text = ""
    @State var targetFontWeight: Font.Weight = .bold
    @State var minimumFontWeight: Font.Weight = .ultraLight
    @State var animation: Animation = .spring(response: 0.4, dampingFraction: 0.4)
    @State var toggle = true

    var body: some View {
        VStack {
            AnimatedTextView("Write with", toggle: toggle, animation: animation, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight)
                .frame(maxWidth: .infinity, alignment: .leading)
            AnimatedTextView("intelligent new", toggle: toggle, animation: animation, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight)
                .frame(maxWidth: .infinity, alignment: .leading)
            AnimatedTextView("tools. Everywhere", toggle: toggle, animation: animation, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight)
                .frame(maxWidth: .infinity, alignment: .leading)
            AnimatedTextView("words matter.", toggle: toggle, animation: animation, targetFontWeight: targetFontWeight, minimumFontWeight: minimumFontWeight)
                .frame(maxWidth: .infinity, alignment: .leading)
            Button("Get started") {
                toggle.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            .foregroundColor(Color(.systemBackground))
            .tint(.primary)
            .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 20)
            .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 15)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
        }
        .padding(30)
    }
}

#Preview {
    ContentView()
}
