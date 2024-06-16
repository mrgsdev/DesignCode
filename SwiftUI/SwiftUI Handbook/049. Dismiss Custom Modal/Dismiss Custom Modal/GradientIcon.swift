//
//  GradientIcon.swift
//  Dismiss Custom Modal
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "envelope.fill"
    var gradient: Array<Color> = [.blue,.purple]
    
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
    GradientIcon()
}
