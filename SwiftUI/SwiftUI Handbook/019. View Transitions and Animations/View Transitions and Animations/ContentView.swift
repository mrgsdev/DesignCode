//
//  ContentView.swift
//  View Transitions and Animations
//
//  Created by mrgsdev on 10.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
            if show {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.blue)
                    .padding()
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                show.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
