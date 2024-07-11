//
//  ContentView.swift
//  Link from a Text
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Visit Design+Code website")
                .foregroundStyle(.blue)
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https:/designcode.io")!)
                }
        }
        HStack {
            Text("You agree to our")
            
            Link("Terms", destination: URL(string: "https:/designcode.io")!)
            
            Text("and")
            
            Text("Privacy policy")
                .foregroundStyle(.blue)
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https:/designcode.io")!)
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
