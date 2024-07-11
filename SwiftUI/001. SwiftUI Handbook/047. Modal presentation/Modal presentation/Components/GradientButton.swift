//
//  GradientButton.swift
//  Modal presentation
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct GradientButton: View {
    var text = "Text here"
    var body: some View {
        VStack {
            VStack{
                Text(text)
                    .font(.headline)
            }
            .frame(width: 335, height: 50,alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing)
            .clipShape(RoundedRectangle(cornerRadius: 16)))
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    GradientButton()
}
