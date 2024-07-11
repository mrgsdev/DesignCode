//
//  GradientIcon.swift
//  Modal presentation
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct GradientIcon: View {
    var icon = ""
    var body: some View {
        ZStack{
            Image(systemName: icon)
                .frame(width: 36,height: 36)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .mask(RoundedRectangle(cornerRadius: 12))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    GradientIcon()
}
