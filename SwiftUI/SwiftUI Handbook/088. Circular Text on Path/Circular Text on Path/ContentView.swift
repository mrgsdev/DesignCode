//
//  ContentView.swift
//  Circular Text on Path
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var text = "Latitude 35.08587 E • Longitude 21.43673 W • Elevation 64M • Incline 12 •".uppercased()
    
    var body: some View {
        ZStack {
            
            ForEach(Array(text.enumerated()), id:  \.offset) { index, letter in
                VStack {
                    Text(String(letter))
                    Spacer()
                }
                .rotationEffect(.degrees(4.9 * Double(index)))
            }
        }
        .frame(width: 300,height: 300)
        .font(.system(size: 13,design: .monospaced)).bold()

    }
    
    
    var texts: some View {
        VStack {
            
            ForEach(Array(text.enumerated()), id:  \.offset) { index, letter in
                Text(String(letter))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
