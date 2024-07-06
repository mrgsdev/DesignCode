//
//  ContentView.swift
//  Radial Gradient Button Animation
//
//  Created by mrgsdev on 04.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var appear = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 200)
                .foregroundStyle(
                    .linearGradient(colors: [Color(#colorLiteral(red: 0.3408924341, green: 0.3429200053, blue: 0.3997989893, alpha: 1)), Color(#colorLiteral(red: 0.02498620935, green: 0.04610963911, blue: 0.08353561908, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .shadow(.inner(color: .white.opacity(0.2), radius: 0, x: 1, y: 1))
                    .shadow(.inner(color: .white.opacity(0.05), radius: 4, x: 0, y: -4))
                    .shadow(.drop(color: .black.opacity(0.5), radius: 30, y: 30))
                )
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
                .overlay(Image(systemName: "circle").foregroundStyle(.white))
                .background(
                    ZStack {
                        AngularGradient(colors: [.red, .blue, .teal, .red], center: .center)
                            .cornerRadius(10)
                            .blur(radius: 15)
                            .opacity(appear ? 1 : 0)
                        AngularGradient(colors: [.white, .blue, .teal, .white], center: .center)
                            .cornerRadius(10)
                            .blur(radius: 15)
                            .opacity(appear ? 0 : 1)
                    }
                    .animation(.spring(duration: 1).repeatForever(autoreverses: true), value: appear)
                    .onAppear {
                        appear = true
                    }
                )
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
