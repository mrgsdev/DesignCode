//
//  SwiftData_PersistenceApp.swift
//  SwiftData Persistence
//
//  Created by mrgsdev on 09.07.2024.
//

import SwiftUI

@main
struct SwiftData_PersistenceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Card.self, Color.self])
    }
}
