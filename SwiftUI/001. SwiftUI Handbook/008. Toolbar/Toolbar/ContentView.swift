//
//  ContentView.swift
//  Toolbar
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Toolbar").font(.title).bold()
                .toolbar {
                   
                    ToolbarItemGroup(placement: .bottomBar){
                        HStack(spacing: 0) {
                            Spacer()
                            Image(systemName: "book")
                            Spacer()
                            Image(systemName: "person").resizable().frame(width: 30,height: 30)
                            
                            Spacer()
                            Image(systemName: "trash")
                           
                            Spacer()
                        }
                    }
                    
                    
                }
               
        }
    }
}

#Preview {
    ContentView()
}
