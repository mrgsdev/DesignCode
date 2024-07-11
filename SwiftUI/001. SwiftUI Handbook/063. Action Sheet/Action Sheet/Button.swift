//
//  Button.swift
//  Action Sheet
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct Button: View {    
    var body: some View {
        VStack {
            Text("Change photo")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                .blue,
                                .purple
                            ]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            .cornerRadius(16)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    Button()
}
