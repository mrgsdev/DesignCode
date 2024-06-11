//
//  ContentView.swift
//  Tap Animation with Delay
//
//  Created by mrgsdev on 10.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State  var tap = false
    var body: some View {
        VStack{
            Text("View more")
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.white, .green]), startPoint: .leading, endPoint: .trailing))
                .font(.title)
                .bold()
        }
        .frame(width: 200, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottom, endPoint: .trailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: .blue.opacity(0.4), radius: 10, x: 0.0, y: 20)
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.7, dampingFraction: 0.9))
        .onTapGesture {
            tap = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              tap = false
            }
        }
    }
}

#Preview {
    ContentView()
}
