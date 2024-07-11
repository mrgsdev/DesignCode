//
//  ContentView.swift
//  Navigation Stack
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            List(0 ..< 5) { item in
                NavigationLink(destination: Text("Content")) {
                    Text("\(item + 1)")
                }
            }
            .navigationTitle("SwiftUI Apps")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
        
    }
}

#Preview {
    ContentView()
}
