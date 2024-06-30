//
//  ContentView.swift
//  SF Font Width Styles
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
      
            Text("largeTitle")
                .font(.largeTitle)
            Spacer()
            Text("SF Font Width Styles")
                .font(.system(size: 20).width(.compressed))
            Spacer()
            Text("SF Font Width Styles")
                .font(.system(size: 20).width(.expanded))
            Spacer()
            Text("SF Font Width Styles")
                .font(.system(size: 20).width(.condensed))
            
            Text(".font(.system(size: 20).width(.condensed)")
                .font(.headline)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
