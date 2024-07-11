//
//  ContentView.swift
//  Navigation View
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                NavigationLink(destination: NewView()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [
                                        Color.red,
                                        Color.blue
                                    ]
                                ) ,
                                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                                endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
                            )
                        )
                        .frame(height: 1000)
                    .padding()
                }
            }
            .navigationTitle("Today")
             
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "person.crop.circle")
                }
            }
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
