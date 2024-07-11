//
//  ContentView.swift
//  Tab View Pagination
//
//  Created by mrgsdev on 09.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 30)
                .fill(.blue)
            .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(.red)
            .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(.yellow)
            .padding()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
    }
}

#Preview {
    ContentView()
}
