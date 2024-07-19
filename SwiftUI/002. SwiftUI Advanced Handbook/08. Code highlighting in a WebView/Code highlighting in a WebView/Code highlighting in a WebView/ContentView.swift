//
//  ContentView.swift
//  Code highlighting in a WebView
//
//  Created by mrgsdev on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var htmlContent: String = ""
       
       var body: some View {
           WebView(html: htmlContent)
               .padding()
               .onAppear() {
                   htmlContent = ParseContent().parse()
               }
           
       }

}

#Preview {
    ContentView()
}
