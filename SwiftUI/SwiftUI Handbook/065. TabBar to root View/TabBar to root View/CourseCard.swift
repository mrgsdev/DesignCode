//
//  CourseCard.swift
//  TabBar to root View
//
//  Created by mrgsdev on 23.06.2024.
//

import SwiftUI

struct CourseCard: View {
    var image: String
    var title: String
    var hours: String
    var colors: Array<Color>
    var logo: String
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 6) {
                Image(image)
                    .resizable()
                    .frame(width: 128, height: 96, alignment: .center)
                
                Text(title)
                    .font(.headline)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(hours)
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .frame(maxWidth: 200)
            .padding(.horizontal, 16)
            .padding(.bottom, 0)
        }
        .frame(height: 200)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.2)]), startPoint: .center, endPoint: .bottom)
        )
        .background(
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
        )
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: colors[0].opacity(0.3), radius: 20, x: 0, y: 10)
        .overlay(
            Image(logo)
                .resizable()
                .frame(maxWidth: 24, maxHeight: 24, alignment: .center)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        )

    }

}


#Preview {
    CourseCard(
        image: "illustration",
        title: "SwiftUI for iOS 14",
        hours: "20 sections - 3 hours",
        colors: [.pink, .purple],
        logo: "swift-logo"
    )
}
