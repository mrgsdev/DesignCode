//
//  ContentView.swift
//  Modal presentation
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    var body: some View {
        HStack {
            GradientButton(text: "Sign in")
                .onTapGesture {
                    showSheet = true
            }
        }
        .sheet(isPresented: $showSheet, content: {
            SignInView()
        })
    }
}

#Preview {
    ContentView()
}
