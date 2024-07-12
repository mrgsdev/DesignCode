//
//  ContentView.swift
//  Embed Animated Assets from Rive
//
//  Created by mrgsdev on 10.07.2024.
//

import SwiftUI
import RiveRuntime
struct ContentView: View {
    var body: some View {
        VStack {
            RiveViewModel(fileName: "yet_another_cat_project__3").view()
                .background(Color.init(hex: "EDECDF"))
         
        }
       
            
    }
}

#Preview {
    ContentView()
}
