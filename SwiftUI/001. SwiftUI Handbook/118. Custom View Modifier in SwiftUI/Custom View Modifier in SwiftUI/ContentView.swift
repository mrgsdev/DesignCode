//
//  ContentView.swift
//  Custom View Modifier in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .fill(.gray)
            .frame(width: 100, height: 100)
            .shadows(.large)
    }
}

#Preview {
    ContentView()
}
