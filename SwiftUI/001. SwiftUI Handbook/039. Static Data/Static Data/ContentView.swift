//
//  ContentView.swift
//  Static Data
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List(courses) { item in
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 40,height: 40)
                    .foregroundStyle(item.color)
                Divider()
                
                Text(item.title)
                
            }
            
           
        }
    }
}

#Preview {
    ContentView()
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
    
    
}

private var courses = [
    Course(title: "SwiftUI", color: .blue),
    Course(title: "UI Design", color: .red)
]
