//
//  GradientButton.swift
//  Read from Firestore
//
//  Created by mrgsdev on 16.07.2024.
//

import SwiftUI

struct GradientButton: View {
    var text: String = "Text here"
    var gradient: Array<Color> = [Color(#colorLiteral(red: 0.7294117647, green: 0.4588235294, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1))]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.headline)
            }
            .frame(width: 200, height: 50, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(16)
            .foregroundColor(.white)
        }
    }
}


#Preview {
    GradientButton()
}
