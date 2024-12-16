//
//  ProfileView.swift
//  Advanced Development in SwiftUI
//
//  Created by mrgsdev on 07.12.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Image("background-2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack(alignment: .leading,spacing: 16) {
                    HStack(spacing: 16) {
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("pink-gradient-1"))
                                .frame(width: 66, height: 66,alignment: .center)
                            Image(systemName: "person.fill")
                                .foregroundStyle(.white)
                                .font(.system(size: 24,weight: .medium,design: .rounded))
                        }
                        .frame(width: 66,height: 66,alignment: .center)
                        
                        VStack(alignment: .leading) {
                            Text("Sai Kamkapati")
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
                            Text("View profile")
                                .foregroundStyle(.white).opacity(0.7)
                                .font(.footnote)
                        }
                        Spacer()
                        
                        Button {
                            print("Segue to settings")
                        } label: {
                            TextfieldIcon(iconName: "gearshape.fill", currentlyEditing: .constant(true))
                        }
                        
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(.white.opacity(0.1))
                    
                    Text("Instructor at Desing+Code")
                        .foregroundStyle(.white)
                        .font(.title2.bold())
                    
                    Label("Awarded 10 certificates since September 2020", systemImage: "calendar")
                        .foregroundStyle(.white.opacity(0.7))
                        .font(.footnote)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(.white.opacity(0.1))
                    
                    HStack(spacing: 16) {
                        Image("Twitter")
                            .resizable()
                            .foregroundStyle(.white.opacity(0.7))
                            .frame(width: 24, height: 24,alignment: .center)
                        
                        Image(systemName: "link")
                            .foregroundStyle(.white.opacity(0.7))
                            .font(.system(size: 17,weight: .semibold,design: .rounded))
                        
                        Text("desingcode.io")
                            .foregroundStyle(.white.opacity(0.7))
                            .font(.footnote)
                        
                    }
                }
                .padding(16)
                
                GradientButton(buttonTitle: "Purchase Lifetime Pro Plan") {
                    print("IAP")
                }
                .padding(.horizontal,16)
                Button {
                    print("Restore")
                } label: {
                    GradientText(text: "Restore Purchases")
                        .font(.footnote.bold())
                }
                .padding(.bottom)
            }
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white.opacity(0.2))
                    .background(Color("secondaryBackground").opacity(0.5))
                    .background(VisualEffectBlur(blurStyle: .dark))
                    .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
            )
            .cornerRadius(30)
            .padding(.horizontal)
            
            VStack{
                Spacer()
                Button {
                    print("Sign out")
                } label: {
                    Image(systemName: "arrow.turn.up.forward.iphone.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium, design: .rounded))
                        .rotation3DEffect(Angle(degrees: 180), axis: (x: 0, y: 0, z: 1))
                        .background(
                            Circle()
                                .stroke(Color.white.opacity(0.2), lineWidth: 1)
                                .frame(width: 40, height: 40, alignment: .center)
                                .overlay(
                                    VisualEffectBlur(blurStyle: .dark)
                                        .cornerRadius(20)
                                        .frame(width: 40, height: 40, alignment: .center)
                                )
                        )
                    
                }
                
            }
            .padding(.bottom, 64)
        }
        .colorScheme(.dark)
    }
}

#Preview {
    ProfileView()
}
