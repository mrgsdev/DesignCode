//
//  ContentView.swift
//  Text View
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Get the typefaces you need to design interfaces for your apps on Apple platforms. These typefaces are designed to optimally display text at a variety of sizes and in a wide range of languages across multiple interfaces.")
//            .font(.title).fontWeight(.semibold)
            .font(.system(size: 28, weight: .semibold, design: .rounded))
            .foregroundStyle(.blue)
            .frame(width: 300,alignment: .center)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
            .lineSpacing(10.0)
    }
}

#Preview {
    ContentView()
}
