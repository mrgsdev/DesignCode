//
//  GradientText.swift
//  Advanced Development in SwiftUI
//
//  Created by mrgsdev on 05.12.2024.
//

import SwiftUI

struct GradientText: View {
    var text: String = "Text here"
    var body: some View {
        Text("Sign in")
           
            .gradientForeground(colors: [Color("pink-gradient-1"),
                                         Color("pink-gradient-1")])
    }
}


extension View {
    public func gradientForeground(colors:[Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom))
            .mask(self)
        
    }
} 
