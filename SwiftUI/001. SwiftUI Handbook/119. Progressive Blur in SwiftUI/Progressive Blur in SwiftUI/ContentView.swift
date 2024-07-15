//
//  ContentView.swift
//  Progressive Blur in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ScrollView {
                Rectangle()
                    .fill(
                        .orange
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .frame(height: 300)
            }
            .background(Image("backG").resizable().aspectRatio(contentMode: .fill))
            .ignoresSafeArea()
            .overlay(alignment: .top) {
                VariableBlurView(maxBlurRadius: 20)
                    .frame(height: 300)
                    .ignoresSafeArea()
            }
        }
}

#Preview {
    ContentView()
}
