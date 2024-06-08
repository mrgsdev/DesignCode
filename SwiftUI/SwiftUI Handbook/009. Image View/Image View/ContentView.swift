//
//  ContentView.swift
//  Image View
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
     
            Image("Illustration")
                .resizable()
            .aspectRatio(contentMode: .fit)
    
            Image("Illustration")
                .resizable(resizingMode: .tile)
       
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
