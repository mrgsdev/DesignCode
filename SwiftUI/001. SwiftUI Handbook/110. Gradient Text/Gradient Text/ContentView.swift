//
//  ContentView.swift
//  Gradient Text
//
//  Created by mrgsdev on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text("Hello, world!")
            
        }
        .font(.system(size: 60))
        .fontWeight(.bold)
        .foregroundStyle(
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color.red,
                        Color.blue
                    ]
                ),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
        )
    }
}

#Preview {
    ContentView()
}
