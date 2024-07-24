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

                Text("Apollo GraphQL Tutorial Part I")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding()
            
            
            Text("Make sure you follow all the steps and add the API.swift file into your Xcode project!")
                .padding()
        }
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
