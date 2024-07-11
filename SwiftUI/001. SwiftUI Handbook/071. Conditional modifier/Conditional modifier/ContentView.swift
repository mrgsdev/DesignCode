//
//  ContentView.swift
//  Conditional modifier
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var shouldBeRed = true
    var body: some View {
        
        Text(shouldBeRed ? "Hello World!" : "Goodbye")
                .font(.title).bold()
                .padding()
                .foregroundStyle(shouldBeRed ? .red : .green)
                .if(shouldBeRed) { view in
                    view.background(.red)
                }
       
       
    }
}

#Preview {
    ContentView()
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
