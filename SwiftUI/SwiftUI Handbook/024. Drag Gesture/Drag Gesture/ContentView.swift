//
//  ContentView.swift
//  Drag Gesture
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var viewState = CGSize.zero
    var body: some View {
        RoundedRectangle(cornerRadius: 30, style: .continuous)
            .fill(.blue)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width,y: viewState.height)
            .animation(.spring, value: viewState)
            .gesture(
                DragGesture().onChanged({ value in
                    viewState = value.translation
                })
                .onEnded({ value in
                    viewState = .zero
                })
                
            )
    }
}

#Preview {
    ContentView()
}
