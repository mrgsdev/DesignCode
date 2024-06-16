//
//  ContentView.swift
//  Iterating Over an Array
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    var authors = [
        "Meng To",
        "Daniel Nisttahuz",
        "Mica Andreea",
        "Surya Anand"
    ]
    var body: some View {
    
        ForEach(authors,id: \.self) { item in
            Text("\(item)")
        }
        .onAppear{
            iterateOverAuthorsForIn()
        }
    }
    //    Iterating over array in a function
    //    Using forEach
        func iterateOverAuthorsForEach() {
            authors.forEach { author in
                print("author", author)
            }
        }
        
    //  Using for...in
        func iterateOverAuthorsForIn() -> String? {
            for author in authors {
                return author
            }
            
            // If you need the index
            for (index, author) in authors.enumerated() {
                return "\(index + 1) - \(author)"
            }
            
            return nil
        }

}

#Preview {
    ContentView()
}
