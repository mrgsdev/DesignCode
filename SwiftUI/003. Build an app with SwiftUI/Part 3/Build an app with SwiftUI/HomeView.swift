//
//  HomeView.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 30.07.2024.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    @State var showUpdate = false
    @Binding var showContent: Bool
    var body: some View {
        GeometryReader { bounds in
            ScrollView {
                VStack {
                    HStack {
                        Text("Watching")
        //                    .font(.system(size: 28, weight: .bold))
                            .modifier(CustomFontModifier(size: 28))
                        
                        Spacer()
                        
                        AvatarView(showProfile: self.$showProfile)
                        Button(action: { self.showUpdate.toggle() }) {
                            Image(systemName: "bell")
    //                            .renderingMode(.original)
                                .foregroundStyle(.primary)
                                .font(.system(size: 16, weight: .medium))
                                .frame(width: 36, height: 36)
                                .background(Color("background3"))
                                .clipShape(Circle())
                                .modifier(ShadowModifier())
                        }
                        .sheet(isPresented: self.$showUpdate) {
                            UpdateList()
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.leading, 14)
                    .padding(.top, 30)
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        WatchRingsView()
                            .padding(.horizontal,30)
                            .padding(.bottom,30)
                            .onTapGesture {
                                self.showContent = true
                            }
                    }

                   
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                            ForEach(sectionData) { item in
                                GeometryReader { geometry in
                                    SectionView(section: item)
                                        .rotation3DEffect(Angle(degrees:
                                                                    Double(geometry.frame(in: .global).minX - 30) / -20
                                                               ), axis: (x: 0, y: 10, z: 0))
                                }
                                .frame(width: 275, height: 275)
                            }
                        }
                        .padding(30)
                        .padding(.bottom, 30)
                    }
                    .offset(y: -30)
                    HStack {
                        Text("Courses")
                            .font(.title).bold()
                        Spacer()
                    }
                    .padding(.leading, 30)
                    .offset(y: -60)
                    
                    SectionView(
                        section: sectionData[2],
                        width: bounds.size.width - 60,
                        height: 275
                    )
                    .offset(y: -60)
                    Spacer()
                }
                .frame(width: bounds.size.width)
            }
        }
    }
}
struct SectionView: View {
    var section: Section
    var width: CGFloat = 275
    var height: CGFloat = 275
    
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
        .frame(width: width, height: height)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

#Preview {
    HomeView(
        showProfile: .constant(false),
        showContent: .constant(false)
    )
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


struct WatchRingsView: View {
    var body: some View {
        HStack(spacing: 30){
            HStack(spacing: 12.0) {
                RingView(
                    show: .constant(true),
                    color1: .purple,
                    color2: .blue,
                    width: 44,
                    height: 44,
                    percent: 68
                )
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("6 minutes left")
                        .bold()
                        .modifier(FontModifier(style: .subheadline))
                    Text("Watched 10 mins today")
                        .modifier(FontModifier(style: .caption))
                }
            }
            .padding(8)
            .background(Color("background3"))
            .cornerRadius(20)
            .modifier(ShadowModifier())
            
            HStack(spacing: 12.0) {
                RingView(
                    show: .constant(true),
                    color1: .pink,
                    color2: .orange,
                    width: 32,
                    height: 32,
                    percent: 50
                )
                
            }
            .padding(8)
            .background(Color("background3"))
            .cornerRadius(20)
            .modifier(ShadowModifier())
            
            HStack(spacing: 12.0) {
                RingView(
                    show: .constant(true),
                    color1: .blue,
                    color2: .orange,
                    width: 32,
                    height: 32,
                    percent: 32
                )
                
            }
            .padding(8)
            .background(Color("background3"))
            .cornerRadius(20)
            .modifier(ShadowModifier())
        }
    }
}
