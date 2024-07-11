//
//  ContentView.swift
//  Shapes and Stroke
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue).ignoresSafeArea()
//                .foregroundStyle(.blue).ignoresSafeArea()
            VStack {
                Circle()
                    .stroke(.black,lineWidth: 3)
                    .frame(width: 44, height: 44)
                
                Text("Meng To")
                    .bold()
                RoundedRectangle(cornerRadius: 15,style: .continuous)
//                Capsule()
                    .foregroundStyle(.green)
                    .frame(height: 44)
                    .overlay(Text("Sign Up"))
//                    .frame(width: 200)
                
            }
            .padding()
            .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
         
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
