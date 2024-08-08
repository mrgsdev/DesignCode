//
//  PostList.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 08.08.2024.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .onAppear {
            Api().getPosts { (posts) in
                self.posts = posts
            }
        }
    }
}

#Preview {
    PostList()
}
