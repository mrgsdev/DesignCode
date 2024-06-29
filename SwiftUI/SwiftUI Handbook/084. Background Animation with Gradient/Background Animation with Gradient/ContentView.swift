//
//  ContentView.swift
//  Background Animation with Gradient
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var start = UnitPoint(x: 0, y: 0)
    @State var end = UnitPoint(x: 3, y: 1)
    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .default
    ).autoconnect()
    let colors = [
        Color.yellow,
        .blue,
        .pink,
        .purple,
        .green
    ]
    
    var body: some View {
        background
//            .blur(radius: 10)
//            .mask(Circle())
//            .frame(width: 200,height: 200,alignment: .center)
        
    }
    var background: some View {
        LinearGradient(
            colors: colors,
            startPoint: start,
            endPoint: end
        )
        .onReceive(timer, perform: { _ in
            withAnimation(.easeInOut(duration: 2)) {
            self.start = UnitPoint(x: 4, y: 0)
            self.end = UnitPoint(x: 0, y: -2)
            self.start = UnitPoint(x: -4, y: 20)
            self.start = UnitPoint(x: 4, y: 0)
            }
        })
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
