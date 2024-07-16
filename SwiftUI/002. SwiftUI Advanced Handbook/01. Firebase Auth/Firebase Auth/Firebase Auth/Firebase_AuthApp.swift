//
//  Firebase_AuthApp.swift
//  Firebase Auth
//
//  Created by mrgsdev on 15.07.2024.
//

import SwiftUI
import Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct Firebase_AuthApp: App {
  
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
               
        }
    }
}
