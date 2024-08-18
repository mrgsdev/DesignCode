//
//  AppleWatchScroll.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 18.08.2024.
//

import SwiftUI

struct AppleWatchScroll: View {
    var body: some View {
        ZStack {

            Color(#colorLiteral(red: 0.9333333333, green: 0.9529411765, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(cards) { card in
                        GeometryReader { geometry in
                            CardViews(
                                minY: geometry.frame(in: .global).minY,
                                maxY: geometry.frame(in: .global).maxY,
                                image: card.image
                            )
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .padding(.horizontal, 30)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppleWatchScroll()
    }
}

struct CardViews: View {
    var text = "Card"
    var minY: CGFloat
    var maxY: CGFloat
    var image: String
    
    var body: some View {
        VStack {
            Image(image).resizable()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(color: Color(#colorLiteral(red: 0.09803921569, green: 0.1490196078, blue: 0.2705882353, alpha: 0.3)), radius: 20, x: 0, y: 10)
        .scaleEffect(minY<0 ? minY/1000+1 : 1, anchor: .bottom)
        .scaleEffect(maxY>812 ? -(maxY-812)/200+1 : 1, anchor: .top)
        .opacity(Double(minY/300+1))
        .opacity(Double(-(maxY-812)/300+1))
        .offset(y: minY<0 ? -minY : 0)
    }
}

struct Card: Identifiable {
    var id = UUID()
    var image: String
}

let cards = [
    Card(image: "Card11"),
    Card(image: "Card22"),
    Card(image: "Card33"),
    Card(image: "Card11"),
    Card(image: "Card22"),
    Card(image: "Card33"),
    Card(image: "Card11"),
    Card(image: "Card22"),
    Card(image: "Card33"),
]
