//
//  Home.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 29.07.2024.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct Home: View {
    @State var showProfile = false
    @State var showContent = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            Color("background2")
                .edgesIgnoringSafeArea(.all)
            
            HomeView(
                showProfile: $showProfile,
                showContent: $showContent
            )
            .padding(.top, 44)
            .background(
                VStack {
                    LinearGradient(gradient: Gradient(colors: [Color("background2"), Color("background1")]), startPoint: .top, endPoint: .bottom)
                        .frame(height: 200)
                    Spacer()
                }
                    .background(Color("background1"))
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: showProfile ? -450 : 0)
            .rotation3DEffect(Angle(degrees: showProfile ? Double(viewState.height / 10) - 10 : 0), axis: (x: 10.0, y: 0, z: 0))
            .scaleEffect(showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0),value: showProfile)
            .edgesIgnoringSafeArea(.all)
            
            MenuView()
                .background(Color.black.opacity(0.001))
                .offset(y: showProfile ? 0 : screen.height )
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0),value: showProfile)
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewState = value.translation
                    }
                        .onEnded { value in
                            if self.viewState.height > 50 {
                                self.showProfile = false
                            }
                            self.viewState = .zero
                        }
                )
            if showContent {
                BlurView(style: .systemThinMaterial).edgesIgnoringSafeArea(.all)
                
                ContentView()
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .offset(x: -16, y: 16)
                .transition(.move(edge: .top))
                .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                .onTapGesture {
                    self.showContent = false
                }
            }
            
        }
    }
}

#Preview {
    Home().environment(\.colorScheme, .dark)
}

struct AvatarView: View {
    @Binding var showProfile: Bool
    var body: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image("Avatar")
                .renderingMode(.original)
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        }
    }
}
