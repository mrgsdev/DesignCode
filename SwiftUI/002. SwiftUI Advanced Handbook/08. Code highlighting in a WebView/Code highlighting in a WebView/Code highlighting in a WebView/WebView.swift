//
//  WebView.swift
//  Code highlighting in a WebView
//
//  Created by mrgsdev on 17.07.2024.
//

import Foundation

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    var html: String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.loadHTMLString(html, baseURL:  nil)
    }
    
}
