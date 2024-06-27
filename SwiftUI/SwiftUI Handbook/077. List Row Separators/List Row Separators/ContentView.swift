//
//  ContentView.swift
//  List Row Separators
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(authors) { author in
            Text(author.name)
                .listRowSeparatorTint(.green)
                .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    ContentView()
}

struct Author: Identifiable {
    var id = UUID()
    var name: String
}

var authors = [
    Author(name: "Meng To"),
    Author(name: "Stephanie Diep"),
    Author(name: "Willie Yam"),
    Author(name: "Sai Kambampati")
]
