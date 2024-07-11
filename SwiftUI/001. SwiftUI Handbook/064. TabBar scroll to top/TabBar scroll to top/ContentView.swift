//
//  ContentView.swift
//  TabBar scroll to top
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
       @State private var tappedTwice: Bool = false
       
       
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
                           .onChange(of: tappedTwice, { oldValue, newValue in
                               if newValue {
                                   withAnimation {
                                       proxy.scrollTo(1)
                                   }
                                   tappedTwice = false
                               }
                           })
                   }
                   .tabItem {
                       Image(systemName: "square.grid.2x2.fill")
                       Text("Learn Now")
                   }
                   .tag(1)
                   
                   NavigationView {
                       CoursesView()
                           .onChange(of: tappedTwice, { oldValue, newValue in
                               if newValue {
                                   withAnimation {
                                       proxy.scrollTo(2)
                                   }
                                   tappedTwice = false
                               }
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
