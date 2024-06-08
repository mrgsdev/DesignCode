//
//  ContentView.swift
//  Stacks and Spacer
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundStyle(.blue)
                Text("Hello, world!")
                    .font(.title)
                Text("Second line")
        }
        .padding()
        .frame(width: 320)
        
//        HStack(alignment: .center, spacing: 16) {
////            Spacer()
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
////            Spacer()
//            
//        }
//        .padding()
//        .frame(width: 320)
        
//        HStack(alignment: .center, spacing: 16) {
//            Spacer()
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
//            Spacer()
//            
//        }
//        VStack(alignment: .leading, spacing: 16) {
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
//        }
        
    }
}

#Preview {
    ContentView()
}
