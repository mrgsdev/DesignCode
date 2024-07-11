//
//  ContentView.swift
//  AppStorage
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("themePreference") var themePreference: String = "dark"
        
        var body: some View {
            VStack {
                Text("Your theme preference is: \(themePreference).")
                    .padding()
                
                Button("Toggle theme preference") {
                    if themePreference == "dark" {
                        themePreference = "light"
                    } else {
                        themePreference = "dark"
                    }
                }
            }
          
        }
}

#Preview {
    ContentView()
}
