//
//  ContentView.swift
//  Expanding View
//
//  Created by mrgsdev on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack{
                ExpandingView(expand: $isAnimating, direction: .bottom, symbolName: "phone.fill")
                ExpandingView(expand: $isAnimating, direction: .left, symbolName: "message")
                ExpandingView(expand: $isAnimating, direction: .top, symbolName: "house.fill")
                ExpandingView(expand: $isAnimating, direction: .right, symbolName: "mic.fill")
                
                Image(systemName: "plus.circle.fill").font(.system(size: 50, weight: isAnimating ? .regular : .semibold, design: .rounded))
                    .foregroundColor(isAnimating ? Color.green : Color.white)
                    .rotationEffect(isAnimating ? .degrees(45) : .degrees(0))
                    .scaleEffect(isAnimating ? 3 : 1)
                    .opacity(isAnimating ? 0.25 : 1)
                    .animation(Animation.spring(response: 0.35, dampingFraction: 0.85, blendDuration: 1), value: isAnimating)
                    .onTapGesture {
                        isAnimating.toggle()
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
