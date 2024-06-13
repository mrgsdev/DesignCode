//
//  ContentView.swift
//  Binding
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
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        show.toggle()
                    }
                }
            if show {
                NewView(show: $show)
                    .padding()
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
