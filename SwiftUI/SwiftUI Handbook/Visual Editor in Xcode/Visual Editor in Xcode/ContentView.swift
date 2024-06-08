//
//  ContentView.swift
//  Visual Editor in Xcode
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8.0) {
            Circle()
                .frame(width: 44.0, height: 44.0)
            Text("SwiftUI for iOS 14")
                .font(.title)
                .fontWeight(.bold)
            Text(/*@START_MENU_TOKEN@*/"20 videos"/*@END_MENU_TOKEN@*/)
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(.blue)
        .cornerRadius(20.0)
    }
}

#Preview {
    ContentView()
}
