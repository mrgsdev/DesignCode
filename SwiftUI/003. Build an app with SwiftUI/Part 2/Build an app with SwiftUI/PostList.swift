//
//  PostList.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 08.08.2024.
//

import SwiftUI
struct PostList: View {
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8) {
                Text(post.title).font(.system(.title, design: .serif)).bold()
                Text(post.body).font(.subheadline).foregroundColor(.secondary)
            }
        }
    }
}
//struct PostList: View {
//    @State var posts: [Post] = []
//    
//    var body: some View {
//        List(posts) { post in
//            Text(post.title)
//        }
//        .onAppear {
//            Api().getPosts { (posts) in
//                self.posts = posts
//            }
//        }
//    }
//}

#Preview {
    PostList()
}
