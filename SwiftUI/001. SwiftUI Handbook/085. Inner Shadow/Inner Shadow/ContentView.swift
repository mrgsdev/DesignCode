//
//  ContentView.swift
//  Inner Shadow
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    .radialGradient(
                        colors: [.purple,.black],
                        center: .center,
                        startRadius: 1,
                        endRadius: 400
                    )
                   )
                .ignoresSafeArea()
            Circle()
                .foregroundStyle(.linearGradient(colors: [.black.opacity(0.5),.black.opacity(0.0)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .shadow(.inner(color: .black, radius: 5, x: -10, y: -10))
                )
                .padding(40)
            Circle()
                .foregroundStyle(.linearGradient(colors: [.black.opacity(0.5),.black.opacity(0.0)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .shadow(.inner(color: .black, radius: 5, x: -10, y: -10))
                )
                .padding(60)
            VStack {
                Image(systemName: "aqi.medium")
                    
             
                Text("Inner")
                    
            }
            .font(.system(size: 70)).bold()
            .foregroundStyle(
                .blue.gradient.shadow(
                    .inner(color: .white.opacity(0.3), radius: 3, x: 1, y: 1)
                )
            .shadow(.drop(radius: 5,x: 5,y: 5)))
        }
    }
}

#Preview {
    ContentView()
}
