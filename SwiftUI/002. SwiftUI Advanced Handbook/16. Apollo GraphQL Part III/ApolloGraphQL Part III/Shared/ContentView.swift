//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-06.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var launchViewModel: LaunchViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("🚀")
                    .font(.title2)
                
                Text("Apollo GraphQL Tutorial Part III")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding()
            
            
            Text("Run the app to see all the launches below!")
                .padding()
            
            if launchViewModel.launches.count < 1 {
                Text("Fetching content...")
            } else {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(launchViewModel.launches) { launch in
                            LaunchCard(launch: launch)
                        }
                    }
                }
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchViewModel())
    }
}
