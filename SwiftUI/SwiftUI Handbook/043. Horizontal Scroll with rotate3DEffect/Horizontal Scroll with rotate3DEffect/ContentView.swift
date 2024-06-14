//
//  ContentView.swift
//  Horizontal Scroll with rotate3DEffect
//
//  Created by mrgsdev on 12.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 5) { item in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 30)
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(
                                        colors: [
                                            Color.purple,
                                            Color.blue
                                        ]
                                    ),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .rotation3DEffect(
                                Angle(degrees: Double(geometry.frame(in: .global).minX - 16 ) / -15),
                                axis: (x: 0.0, y: 1.0, z: 0.0),
                                anchor: .center,
                                anchorZ: 0.0,
                                perspective: 1.0
                            )
                        
                    }
                    .frame(width: 300,height: 300)
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
