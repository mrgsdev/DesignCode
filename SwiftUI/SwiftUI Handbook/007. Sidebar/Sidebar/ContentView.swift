//
//  ContentView.swift
//  Sidebar
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List {
                NavigationLink(destination: CoursesView()) {
                    Label("Courses", systemImage: "book")
                   
                }
                NavigationLink(destination: TutorialsView()) {
                    Label("Tutorials", systemImage: "square")
                }
                
            }
            .navigationTitle("Learn")
            CoursesView()
        }
        
       
        
    }
    
}


#Preview {
    ContentView()
}
