//
//  ContentView.swift
//  Custom Layout
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var icons = ["calendar", "message", "figure.walk", "music.note"]
    var body: some View {
         
        CustomLayout {
            ForEach(icons, id: \.self) { item in
                Circle()
                    .frame(width: 44)
                    .overlay(Image(systemName: item).foregroundColor(.white))
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct CustomLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
//        subviews[0].place(at: CGPoint(x: 100, y: 100), proposal: .unspecified)
        // Position
        
        for (index, subview) in subviews.enumerated() {
            var point = CGPoint(x: 50 * index, y: 50 * index).applying(CGAffineTransform(rotationAngle: 1))

            // Center
            point.x += bounds.midX
            point.y += bounds.midY

            // Place subviews
            subview.place(at: point, proposal: .unspecified)
        }
    }
}
