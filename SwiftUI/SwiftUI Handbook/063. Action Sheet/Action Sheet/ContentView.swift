//
//  ContentView.swift
//  Action Sheet
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showActionSheet = false
    var body: some View {
        Button()
            .padding(.horizontal, 20)
            .onTapGesture {
                showActionSheet = true
            }
            .actionSheet(isPresented: $showActionSheet, content: {
                ActionSheet(title: Text("Choose a new photo"), message: Text("Pick a photo that you like"), buttons: [
                    .default(Text("Pick from library")) {
                        print("Tapped on pick from library")
                    },
                    .default(Text("Take a photo")) {
                        print("Tapped on take a photo")
                    },
                    .cancel()
                ])
            })
    }
}

#Preview {
    ContentView()
}
