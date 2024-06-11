//
//  ContentView.swift
//  Background Blur
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottom, endPoint: .topTrailing)
            Rectangle()
                .frame(width: 300,height: 300)
            VisualEffectBlur(blurStyle: .light)
            Text("Hello!")
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .font(.largeTitle).bold()
            
         }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
