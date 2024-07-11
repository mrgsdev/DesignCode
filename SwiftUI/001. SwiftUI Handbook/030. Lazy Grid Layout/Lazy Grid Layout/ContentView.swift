//
//  ContentView.swift
//  Lazy Grid Layout
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 16), count: 4), spacing: 16) {
                ForEach(0 ..< 12) { item in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.blue)
                        .frame(height: 100)
                }
            }
            .padding()
        }
         
        
//        ScrollView {
//            LazyVGrid(columns: [
//                GridItem(.fixed(80), spacing: 16),
//                GridItem(.fixed(160), spacing: 16),
//                GridItem(.fixed(80), spacing: 16)
//            ], spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(height: 100)
//                }
//            }
//            .padding()
//        }
        
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(height: 100)
//                }
//            }
//            .padding()
//        }
        
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(width: 300)
//                }
//            }
//            .padding()
//        }
//        .frame(height: 400)
        
//        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//            ForEach(0 ..< 12) { item in
//                RoundedRectangle(cornerRadius: 15)
//                    .fill(.blue)
//                    .frame(height: 100)
//            }
//        }
//        .padding()
        
         
    }
}

#Preview {
    ContentView()
}
