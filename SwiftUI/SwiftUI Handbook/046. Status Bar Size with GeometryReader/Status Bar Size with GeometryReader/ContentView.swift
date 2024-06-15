//
//  ContentView.swift
//  Status Bar Size with GeometryReader
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Top: \(geometry.safeAreaInsets.top)")
                Text("Bottom: \(geometry.safeAreaInsets.bottom)")
                Text("Leading: \(geometry.safeAreaInsets.leading)")
                Text("Trailing: \(geometry.safeAreaInsets.trailing)")
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .font(.title).bold()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            
        }
    }
}

#Preview {
    ContentView()
}
