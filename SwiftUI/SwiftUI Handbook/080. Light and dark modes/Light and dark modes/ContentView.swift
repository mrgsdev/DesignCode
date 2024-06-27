//
//  ContentView.swift
//  Light and dark modes
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            
            Text("Hello, world!")
                .font(.title).bold()
                .padding()
        }
    }
}

#Preview {
    Group {
        ContentView()
        
        ContentView()
            .environment(\.colorScheme, .dark)
    }
    
}
