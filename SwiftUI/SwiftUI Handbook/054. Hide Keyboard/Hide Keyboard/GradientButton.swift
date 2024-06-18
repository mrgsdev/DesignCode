//
//  GradientButton.swift
//  HideKeyboard (iOS)
//
//  Created by mrgsdev  
//

import SwiftUI

struct GradientButton: View {
    var text: String = "Text here"
    var gradient = [Color.blue, Color.purple]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.headline)
            }
            .frame(width: 335, height: 50, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(16)
            .foregroundColor(.white)
            
        }
    }
}

#Preview {
    GradientButton(text: "Text here", gradient: [Color.accentColor])
}
 
