//
//  ContentView.swift
//  WKWebView
//
//  Created by mrgsdev on 17.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var htmlContent: String = ""
    
    var body: some View {
        WebView(html: htmlContent)
            .onAppear() {
                htmlContent = ParseContent().parse()
            }
    }
}

#Preview {
    ContentView()
}
