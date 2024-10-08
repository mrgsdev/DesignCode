//
//  MenuView.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 29.07.2024.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var user: UserStore
    @Binding var showProfile: Bool
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Meng - 28% complete")
                    .font(.caption)
                
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(
                        Color(
                            #colorLiteral(
                                red: 0,
                                green: 0,
                                blue: 0,
                                alpha: 1
                            )
                        ).opacity(0.08)
                    )
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
                    .onTapGesture {
                        UserDefaults.standard.set(false, forKey: "isLogged")
                        self.user.isLogged = false
                        self.showProfile = false
                    }

            }
            .frame(maxWidth: 500)
            .frame(height: 300)
            .background(
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [
//                            Color("background3"),
//                            Color("background3").opacity(0.6),
//                        ]
//                    ),
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
                BlurView(style: .systemThinMaterial)
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
    }
}


struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(
                    Color(
                        #colorLiteral(
                            red: 0.662745098,
                            green: 0.7333333333,
                            blue: 0.831372549,
                            alpha: 1
                        )
                    )
                )
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}


#Preview {
    MenuView(showProfile: .constant(true))
}
