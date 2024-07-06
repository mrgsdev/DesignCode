//
//  ContentView.swift
//  Phase Animator in SwiftUI
//
//  Created by mrgsdev on 04.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .phaseAnimator([1, 0]) { content, phase in
                    content.scaleEffect(phase)
                }
            Image(systemName: "globe")
                .font(.largeTitle)
            
                .phaseAnimator([1, 2, 3], trigger: isTapped) { content, phase in
                    content.scaleEffect(phase)
                    .blur(radius: phase == 3 ? 20 : 0)
                    
                } animation: { phase in
                    switch phase {
                    case 1: .bouncy
                    case 2: .smooth
                    case 3: .easeOut(duration: 1)
                    default: .easeInOut
                    }
                }
            
                .onTapGesture {
                    isTapped.toggle()
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
