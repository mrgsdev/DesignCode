//
//  ContentView.swift
//  Full Screen Modal
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        VStack {
             
            Text("Open New View")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .fullScreenCover(isPresented: $show, content: {
                    NewView()
                })
        }
        .padding()
        .onTapGesture {
            show.toggle()
        }
    }
}

#Preview {
    ContentView()
}
