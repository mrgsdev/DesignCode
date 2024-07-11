//
//  ContentView.swift
//  Specific Corner Radius
//
//  Created by mrgsdev on 06.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 30, topTrailing: 30))
                    .frame(width: 200, height: 200)
        Rectangle()
            .frame(width: 200, height: 200)
            .cornerRadius(100, corners: [.topLeft, .bottomRight])
        
    }
}

#Preview {
    ContentView()
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
