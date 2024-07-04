//
//  ContentView.swift
//  Detect Screen Size
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var screenSize: CGSize = .zero
    
    var body: some View {
        GeometryReader { proxy in
            VStack {}
                .frame(width: proxy.size.width, height: proxy.size.height)
                .background(.blue)
        }
        
        Rectangle()
        .overlay(
            GeometryReader { proxy in
                Color.clear.preference(key: SizePreferenceKey.self, value: proxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self) { value in
            screenSize = value
        } 
    }
}

#Preview {
    ContentView()
}

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
