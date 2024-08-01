//
//  TabBar.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 01.08.2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        } 
    }
}

#Preview {
    TabBar()
}
