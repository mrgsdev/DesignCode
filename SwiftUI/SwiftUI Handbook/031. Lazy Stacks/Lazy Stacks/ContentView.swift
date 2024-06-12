//
//  ContentView.swift
//  Lazy Stacks
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 100000000) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(height: 100)
                        .shadow(radius: 100)
                        .overlay(
                            Text("LazyVStack")
                                .foregroundStyle(
                                    LinearGradient(
                                        gradient: Gradient(
                                            colors: [
                                                Color.red,
                                                Color.blue
                                            ]
                                        ),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .font(.title).bold()
                        )
                }
            }
            .padding()
        }
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
//                ForEach(0 ..< 100000000) { item in
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(.white)
//                        .frame(height: 100)
//                        .shadow(radius: 100)
//                        .overlay(
//                            Text("1")
//                        )
//                }
//            }
//            .padding()
//        }
    }
    
}

#Preview {
    ContentView()
}
