//
//  ReviewRequest.swift
//  AppReview
//
//  Created by mrgsdev on 19.07.2024.
//

import Foundation
import SwiftUI
import StoreKit
enum ReviewRequest {
    @AppStorage("runsSinceLastRequest") static var runsSinceLastRequest = 0
    @AppStorage("version") static var version = ""
    static var limit = 2
    static func showReview() {
            runsSinceLastRequest += 1
            let appBuild = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
            let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
            let currentVersion = "Version \(appVersion), build \(appBuild)"

            guard currentVersion != version else {
                runsSinceLastRequest = 0
                    return
            }

            guard runsSinceLastRequest == limit else { return }

            if let scene = UIApplication.shared.connectedScenes.first(where: {$0.activationState == .foregroundActive}) as? UIWindowScene {
                    SKStoreReviewController.requestReview(in: scene)

                    // Reset runsSinceLastRequest
                    runsSinceLastRequest = 0

                    // Set version to currentVersion
                    version = currentVersion
            }
    }
    
}


