//
//  ContentView.swift
//  Switch Statement
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    var language: String = "French"
    
    var body: some View {
        switch language {
        case "French":
            Text("Bonjour!")
        case "Spanish":
            Text("Hola!")
        case "Chinese":
            Text("你好!")
        default:
            Text("Hello!")
        }
    }
}

#Preview {
    ContentView()
}
