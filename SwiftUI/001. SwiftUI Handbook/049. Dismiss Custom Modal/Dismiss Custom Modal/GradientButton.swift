//
//  GradientButton.swift
//  Dismiss Custom Modal
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct GradientButton: View {
    var text: String = "Text here"
    var gradient: Array<Color> = [.purple,.blue]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(16)
            .foregroundColor(.white)
            
        }
    }
}

#Preview {
    GradientButton()
}
