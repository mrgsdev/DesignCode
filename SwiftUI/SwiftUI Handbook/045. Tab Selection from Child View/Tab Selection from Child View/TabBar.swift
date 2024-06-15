//
//  TabBar.swift
//  Tab Selection from Child View
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct TabBar: View {
    
    @State var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection){
            ContentView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Home")
                }
                .tag(1)
            SecondView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Settings")
                }
                .tag(2)
                
           
        }
    
         
    }
}

#Preview {
    TabBar()
}
