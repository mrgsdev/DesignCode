//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("🚀")
                    .font(.title2)

                Text("Apollo GraphQL Tutorial Part II")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding()
            
            
            Text("Make sure you follow all the steps and you get the GraphQL result printed in the console!")
                .padding()
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
