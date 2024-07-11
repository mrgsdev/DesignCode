//
//  ContentView.swift
//  AttributeContainer
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var attributedString: AttributedString {
        var name = AttributedString("Stephanie")
        
        var container = AttributeContainer()
        
        container.foregroundColor = .blue
        container.underlineStyle = .single
        container.underlineColor = .blue
        name.mergeAttributes(container)
        
        return "Hello, " + name
    }
    
    var body: some View {
        Text(attributedString)
            .bold()
    }
}

#Preview {
    ContentView()
}
