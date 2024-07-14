//
//  ContentView.swift
//  Navigation Transition in SwiftUI
//
//  Created by mrgsdev on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace

       var body: some View {
           NavigationStack {
               NavigationLink {
                   Text("Detail View")
                       .navigationTransition(.zoom(sourceID: "icon", in: namespace))
               } label: {
                   Image(systemName: "house")
                       .font(.largeTitle)
                       .foregroundColor(.white)
                       .padding(30)
                       .background(.blue)
                       .cornerRadius(30)
                       .matchedTransitionSource(id: "icon", in: namespace)
               }
           }
       }
}

#Preview {
    ContentView()
}
