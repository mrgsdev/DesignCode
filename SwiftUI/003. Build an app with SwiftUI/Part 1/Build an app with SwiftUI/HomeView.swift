//
//  HomeView.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 30.07.2024.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))
                
                Spacer()
                
                AvatarView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(sectionData) { item in
                        SectionView(section: item)
                    }
                }
                .padding(30)
                .padding(.bottom, 30)
            }
            
            Spacer()
        }
    }
}
struct SectionView: View {
    var section: Section
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: Color(section.color).opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

#Preview {
    HomeView(showProfile: .constant(false))
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let sectionData = [
    Section(
        title: "Prototype designs in SwiftUI",
        text: "18 Sections",
        logo: "Logo1",
        image: Image("Card4"),
        color: .card1
    ),
    Section(
        title: "Build a SwiftUI app",
        text: "20 Sections",
        logo: "Logo1",
        image: Image("Background1"),
        color: .card1
    ),
    Section(
        title: "SwiftUI Advanced",
        text: "20 Sections",
        logo: "Logo1",
        image: Image("Card2"),
        color: .card3
    )
]

