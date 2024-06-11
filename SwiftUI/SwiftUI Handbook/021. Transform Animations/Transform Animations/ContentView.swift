//
//  ContentView.swift
//  Transform Animations
//
//  Created by mrgsdev on 10.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 30)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundStyle(.blue)
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1.0, y: 0, z: 0),
                    anchor: .center,
                    anchorZ: 0,
                    perspective: 1.0
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            
        }
    }
}

#Preview {
    ContentView()
}
