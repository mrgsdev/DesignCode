//
//  ContentView.swift
//  SwiftData Persistence
//
//  Created by mrgsdev on 09.07.2024.
//

import SwiftUI
// Models
import SwiftData

@Model
class Card {
    var title: String
    var colors: [Color]
    
    init(title: String, colors: [Color]) {
        self.title = title
        self.colors = colors
    }
}

@Model
class Color {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// ContentView
import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<Card> { $0.title == "Title" }, sort: \Card.title, order: .reverse) var cards: [Card]
    
    var body: some View {
        List {
            ForEach(cards) { card in
                HStack {
                    Text(card.title)
                    ForEach(card.colors) { color in
                        Text(color.name)
                    }
                }
            }
            .onDelete(perform: { indexSet in
                for index in indexSet {
                    modelContext.delete(cards[index])
                }
            })
            
            Button {
                let newCard = Card(title: "Title", colors: [Color(name: "red")])
                modelContext.insert(newCard)
            } label: {
                Text("Add")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Card.self, Color.self])
}
 
