//
//  ContentView.swift
//  Searchable
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var updatedAuthors: [Author] = []
    
    var body: some View {
        NavigationView {
            List(text == "" ? authors : updatedAuthors) {
                Text($0.name)
            }
        }
        .searchable(text: $text)
        .onChange(of: text) { searchValue in
            updatedAuthors = authors.filter { $0.name.contains(searchValue)}
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
