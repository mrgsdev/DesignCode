//
//  ContentView.swift
//  Components
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Design Resources")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.").font(.subheadline)
            LargeButton(text: "Download files")
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}

 
