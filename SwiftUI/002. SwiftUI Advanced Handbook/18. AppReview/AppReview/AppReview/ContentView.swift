//
//  ContentView.swift
//  AppReview
//
//  Created by mrgsdev on 19.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .onAppear() {
                ReviewRequest.showReview()
            }
    }
}

#Preview {
    ContentView()
}
