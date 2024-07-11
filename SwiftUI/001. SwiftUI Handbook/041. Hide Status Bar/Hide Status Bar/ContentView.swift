//
//  ContentView.swift
//  Hide Status Bar
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isHidden = false
    var body: some View {
        VStack {
            
            Text(isHidden ? "Show status bar" : "Hide status bar")
                .frame(maxWidth: .infinity)
                .font(.largeTitle).fontWeight(.bold)
                .scaleEffect(isHidden ? 1.2 : 1)
                .padding()
                .foregroundStyle(
                    isHidden ?
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                .red,
                                .blue
                            ]
                        ),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    :
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    .black,
                                    .brown
                                ]
                            ),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                )
                .statusBarHidden(isHidden)
        }
        .padding()
        .onTapGesture {
            withAnimation() {
                isHidden.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
