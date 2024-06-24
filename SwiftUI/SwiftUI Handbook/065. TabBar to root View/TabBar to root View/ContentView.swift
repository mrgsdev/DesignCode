//
//  ContentView.swift
//  TabBar to root View
//
//  Created by mrgsdev on 23.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
    @State private var tappedTwice: Bool = false
    @State private var home = UUID()
    @State private var courses = UUID()

    var body: some View {
        var handler: Binding<Int> { Binding(
                get: { self.tabSelection },
                set: {
                    if $0 == self.tabSelection {
                        // Lands here if user tapped more than once
                        print("User tapped more than once")
                        tappedTwice = true
                    }
                    self.tabSelection = $0
                }
        )}
        
        return ScrollViewReader { proxy in
            TabView(selection: handler) {
                NavigationView {
                    HomeView()
                        .id(home)
                        .onChange(of: tappedTwice, perform: { tapped in
                            guard tappedTwice else { return }
                            home = UUID()
                            tappedTwice = false
                        })
                }
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Learn Now")
                }
                .tag(1)
                
                NavigationView {
                    CoursesView()
                        .id(courses)
                        .onChange(of: tappedTwice, perform: { tapped in
                            guard tappedTwice else { return }
                            courses = UUID()
                            tappedTwice = false
                        })
                }
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Courses")
                }
                .tag(2)
            }
        }
    }
}


#Preview {
    ContentView()
}
