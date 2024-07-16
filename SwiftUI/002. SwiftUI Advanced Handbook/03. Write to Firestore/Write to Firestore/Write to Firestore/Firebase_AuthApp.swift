//
//  Firebase_AuthApp.swift
//  Read from Firestore
//
//  Created by mrgsdev on 15.07.2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct Firebase_AuthApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate


    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
