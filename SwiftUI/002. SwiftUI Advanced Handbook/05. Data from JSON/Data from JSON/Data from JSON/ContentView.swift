//
//  ContentView.swift
//  Data from JSON
//
//  Created by mrgsdev on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(animals) { animal in
                Text("\(animal.name) is a \(animal.type) and is \(animal.age) years old.")
                    .font(.footnote)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
