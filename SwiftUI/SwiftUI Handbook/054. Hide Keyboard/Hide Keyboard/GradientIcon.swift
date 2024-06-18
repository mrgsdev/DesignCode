//
//  GradientIcon.swift
//  HideKeyboard (iOS)
//
//  Created by mrgsdev  
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "envelope.fill"
    var gradient = [Color.blue,Color.purple]
    
    var body: some View {
        ZStack {
            Image(systemName: icon)
                .frame(width: 36, height: 36)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                .cornerRadius(12)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    GradientIcon(icon: "", gradient: [.pink])
}

