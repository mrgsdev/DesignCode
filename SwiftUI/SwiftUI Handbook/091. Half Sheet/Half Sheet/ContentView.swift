//
//  ContentView.swift
//  Half Sheet
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var CustomView: some View {
        
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [.pink,.white],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .ignoresSafeArea()
            VStack(alignment: .leading,spacing: 10) {
                Text(".sheet()")
                Text(".presentationDetents([.medium,.large])")
            }
            .font(.title3).bold()
        }

    }
    var body: some View {
        Button("show") {
            showMenu = true
        }
        .font(.title).bold()
        .sheet(isPresented: $showMenu, content: {
            CustomView
            .presentationDetents([.medium,.large])
        })

    }
}

#Preview {
    ContentView()
}
