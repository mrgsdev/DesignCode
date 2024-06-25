//
//  ContentView.swift
//  In-App Safari
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSafari: Bool = false
    var body: some View {
          Text("Open Design+Code in Safari")
            .padding()
            .foregroundStyle(.blue)
            .onTapGesture {
                showSafari.toggle()
            }
            .fullScreenCover(isPresented: $showSafari, content: {
                SFSafariViewWrapper(URL: URL(string: "https://www.designcode.io")!)
            })
    }
}

#Preview {
    ContentView()
}
