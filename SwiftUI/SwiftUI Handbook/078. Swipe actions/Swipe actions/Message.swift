//
//  Message.swift
//  Swipe actions
//
//  Created by mrgsdev on 24.06.2024.
//

import Foundation
struct Message: Identifiable {
    var id = UUID()
    var title: String
    var content: String
}

var messages = [
    Message(
        title: "Hello",
        content: "Hello my friend, how have you been? I've been wondering if you'd like to meet up sometime."
    ),
    Message(
        title: "50% off sales",
        content: "Last chance to get a hold of last season's collection, now with an additional 50% off."
    ),
    Message(
        title: "Required documents",
        content: "Hi, please find attached the required documents."
    ),
    Message(
        title: "You have 8 new followers",
        content: "Congrats! Since yesterday, 8 new people followed you! Log into the app to see who they are."
    )
]

