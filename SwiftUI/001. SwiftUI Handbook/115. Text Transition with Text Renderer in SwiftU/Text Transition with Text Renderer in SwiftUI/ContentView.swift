//
//  ContentView.swift
//  Text Transition with Text Renderer in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isVisible = true
    
    var body: some View {
        VStack {
            if isVisible {
                Text("Text Transition")
                    .customAttribute(EmphasisAttribute())
                    .foregroundStyle(.primary)
                    .font(.system(size: 44, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .multilineTextAlignment(.center)
                    .transition(TextTransition())
            }
            Button("Toggle Visibility") {
                isVisible.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
