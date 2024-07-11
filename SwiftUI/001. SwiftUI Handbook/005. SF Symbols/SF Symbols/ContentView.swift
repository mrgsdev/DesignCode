//
//  ContentView.swift
//  SF Symbols
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "paperplane.circle.fill")
            .renderingMode(.original)
            .imageScale(.medium)
            .font(.system(size: 50,weight: .semibold))
            .foregroundStyle(.black)
    }
}

#Preview {
    ContentView()
}
