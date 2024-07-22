//
//  ContentView.swift
//  Configuration files in Xcode
//
//  Created by mrgsdev on 19.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            getURLApi()
        }
    }
    func getURLApi(){
        let url = URL(string: "./Development.xcconfig", relativeTo: API.baseURL)!
    }
}

#Preview {
    ContentView()
}
