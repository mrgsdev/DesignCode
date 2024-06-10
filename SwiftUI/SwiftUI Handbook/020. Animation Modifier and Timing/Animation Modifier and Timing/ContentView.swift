//
//  ContentView.swift
//  Animation Modifier and Timing
//
//  Created by mrgsdev on 10.06.2024.
//  https://cubic-bezier.com

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        
        ZStack {
            VStack{
                if show {
                    Text(
"""
RoundedRectangle(cornerRadius: 40)
        .foregroundStyle(.white)
        .frame(height: 300)
        .opacity(show ? 1 : 0.5)
        .padding(show ? 16 : 32)
        .offset(y: show ? 0 : 30)
        .animation(
        .spring(response: 0.4, dampingFraction: 0.4),value: show)
""")
                
                .font(.system(size: 11))
                .bold()  
                .padding()
                } else {
                    Text("""
RoundedRectangle(cornerRadius: 40)
        .foregroundStyle(.white)
        .frame(height: 300)
        .offset(y: show ? 600 : 0)
        .padding()
        .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8),value: show)
""")
                    .font(.system(size: 11))
                    .bold()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            .padding()
            
            Color.black.ignoresSafeArea().opacity(show ? 0.5 : 0.2)
                .animation(.linear(duration: 0.8),value: show)
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.white)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.4, dampingFraction: 0.4),value: show)
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.white)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .padding()
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8),value: show)
            
            
        }
        .onTapGesture {
            //            withAnimation(.easeInOut) {
            show.toggle()
            //            }
        }
        
    }
}

#Preview {
    ContentView()
}
