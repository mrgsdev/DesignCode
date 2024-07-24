//
//  ApolloGraphQLApp.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-06.
//

import SwiftUI

@main
struct ApolloGraphQLApp: App {
    @StateObject var launchViewModel = LaunchViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(launchViewModel)
        }
    }
}
