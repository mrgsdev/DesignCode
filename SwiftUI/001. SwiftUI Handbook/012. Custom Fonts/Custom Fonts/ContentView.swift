//
//  ContentView.swift
//  Custom Fonts
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("System Font!")
                .font(.title)
            Text("Custom Font!")
                .font(.custom("DMSerifText-Regular", size: 30))
            
        }
        .frame(width: 300, height: 200)
        .background(.green)
        .clipShape(Circle())
//        .padding()
    }
}

#Preview {
    ContentView()
}
