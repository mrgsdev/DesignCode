//
//  ContentView.swift
//  View That Fits
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ViewThatFits {
            HStack {
                card.frame(width: 200)
                card.frame(width: 200)
                card.frame(width: 200)
            }
            VStack {
                card
                card
                card
            }
        }
        .padding(20)
    }
    
    var card: some View {
        VStack(alignment: .leading, spacing: 12) {
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 24)
                .opacity(0.5)
            Text("View That Fits")
                .font(.title3).bold()
            Text("This will prioritize the first child view and fall back to the second view as long as it fits.")
                .font(.footnote)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(20)
        .padding(.vertical, 20)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.1), radius: 3, y: 1)
        .shadow(color: .black.opacity(0.15), radius: 10, y: 5)
    }
}

#Preview {
    ContentView()
}
