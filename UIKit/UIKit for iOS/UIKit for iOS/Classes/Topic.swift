//
//  Topic.swift
//  UIKit for iOS
//
//  Created by mrgsdev on 06.04.2024.
//

import UIKit
class Topic {
    var topicName: String
    var topicSymbol: String

    init(name: String!, icon: String!) {
        self.topicName = name
        self.topicSymbol = icon
    }
}

let topics = [
    Topic(name: "iOS Development", icon: "iphone"),
    Topic(name: "UI Design", icon: "eyedropper"),
    Topic(name: "Web Development", icon: "desktopcomputer")
]

let libarrySettings = [
    Topic(name: "History", icon: "clock.fill"),
    Topic(name: "Favorites", icon: "star.fill"),
    Topic(name: "Download", icon: "square.and.arrow.down.fill")
]
