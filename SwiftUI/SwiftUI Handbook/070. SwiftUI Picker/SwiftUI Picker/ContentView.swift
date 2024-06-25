//
//  ContentView.swift
//  SwiftUI Picker
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            NavigationView {
                WheelPicker()
                    .navigationTitle("WheelPicker")
            }
            .tabItem {
                Label("Menu", systemImage: "list.dash")
            }
            NavigationView {
                SegmentedPicker()
                    .navigationTitle("SegmentedPicker")
            }
            .tabItem {
                Label("Order", systemImage: "square.and.pencil")
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
