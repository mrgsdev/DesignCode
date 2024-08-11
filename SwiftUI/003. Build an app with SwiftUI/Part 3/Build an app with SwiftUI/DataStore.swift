//
//  DataStore.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 08.08.2024.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
