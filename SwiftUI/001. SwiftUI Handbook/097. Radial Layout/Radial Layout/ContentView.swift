//
//  ContentView.swift
//  Radial Layout
//
//  Created by mrgsdev on 04.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var icons = ["calendar", "message", "figure.walk", "music.note"]
    var numbers = [12,1,2,3,4,5,6,7,8,9,10,11]
    
    var body: some View {
        ZStack {
            RadialLayout {
                ForEach(icons, id: \.self) { item in
                    Circle()
                        .frame(width: 44)
                        .overlay(Image(systemName: item).foregroundColor(.white))
                }
            }
            .frame(width: 120)
            RadialLayout {
                ForEach(numbers, id: \.self) { item in
                    Text("\(item)")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.black)
                }
            }
            .frame(width: 240)
            RadialLayout {
                ForEach(numbers, id: \.self) { item in
                    Text("\(item * 5)")
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.black)
                }
            }
            .frame(width: 360)
            Circle()
                .strokeBorder(.black, style: StrokeStyle(lineWidth: 10, dash: [1, 10]))
                .frame(width: 220)
        }
    }
}

#Preview {
    ContentView()
}

struct RadialLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        //        subviews[0].place(at: CGPoint(x: 100, y: 100), proposal: .unspecified)
        // Position
        // Before for loop
        let radius = bounds.width / 3.0
        // Update point
        var point = CGPoint(x: 0, y: -radius)
        // After radius
        let angle = Angle.degrees(360.0 / Double(subviews.count)).radians
        for (index, subview) in subviews.enumerated() {
            // Position
            var point = CGPoint(x: 0, y: -radius).applying(CGAffineTransform(rotationAngle: CGFloat(angle) * CGFloat(index)))
            
            // Center
            point.x += bounds.midX
            point.y += bounds.midY
            
            // Place subviews
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}
