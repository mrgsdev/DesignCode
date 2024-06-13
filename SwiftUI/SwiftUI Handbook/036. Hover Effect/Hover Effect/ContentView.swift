//
//  ContentView.swift
//  Hover Effect
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isHover = false
    
    var body: some View {
        VStack {
//            Button(action: {}) {
//                Text("Hover Effect")
//            }
//            .padding()
//            .contentShape(RoundedRectangle(cornerRadius: 10))
//            .hoverEffect(.lift)
            
            Text("Hover Effect Custom")
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 10)
                    .trim(from: isHover ? 0 : 1,to: 1)
                    .stroke()
                )
                .contentShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isHover ? 1.2 : 1)
                .animation(.spring, value: isHover)
                .onHover(perform: { hovering in
                    isHover = hovering
                })
        }
        
    }
}

#Preview {
    ContentView()
}
