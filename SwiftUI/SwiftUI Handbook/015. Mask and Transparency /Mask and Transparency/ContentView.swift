//
//  ContentView.swift
//  Mask and Transparency
//
//  Created by mrgsdev on 09.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                ForEach(0 ..< 5) { _ in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300, alignment: .top)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .mask(LinearGradient(gradient: Gradient(colors: [Color.red, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom))
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
