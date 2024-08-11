//
//  RingView.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 02.08.2024.
//

import SwiftUI

struct RingView: View {
    @Binding var show: Bool
    var color1 = Color.pink
    var color2 = Color.purple
    var width: CGFloat = 300
    var height: CGFloat = 300
    var percent: CGFloat = 88
    
    
    var body: some View {
        let multiplier = width / 44
        let progress = 1 - (percent / 100)
        return ZStack {
            Circle()
                .stroke(
                    Color.black.opacity(0.1),
                    style: StrokeStyle(lineWidth: 5 * multiplier)
                )
                .frame(width: width, height: height)
            
            Circle()
                .trim(from: show ? progress : 1, to: 1)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                color1,
                                color2
                            ]
                        ),
                        startPoint: .topTrailing,
                        endPoint: .bottomLeading
                    ),
                    style: StrokeStyle(
                        lineWidth: 5 * multiplier,
                        lineCap: .round,
                        lineJoin: .round,
                        miterLimit: .infinity
                    )
                )
                .animation(.easeIn.delay(0.3))
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(
                    Angle(degrees: 180),
                    axis: (x: 1, y: 0, z: 0)
                )
                .frame(width: width, height: height)
                .shadow(
                    color: Color(color2).opacity(0.1),
                    radius: 3 * multiplier,
                    x: 0,
                    y: 3 * multiplier
                ) 
            
            Text("\(Int(percent))%")
                .font(.system(size: 14 * multiplier))
                .fontWeight(.bold)
                
        }
        
    }
    
}

#Preview {
    RingView(show: .constant(true))
}
