//
//  ContentView.swift
//  Swift Package Manager
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        ZStack {
        
            LinearGradient(colors: [.red,.pink], startPoint: .leading, endPoint: .trailing)
        
          
                Text("Swift Package Manager!")
                    .font(.title).bold()
                    .foregroundStyle(.white)
            
            .padding()
            
          
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
