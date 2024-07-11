//
//  LargeButton.swift
//  Components
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct LargeButton: View {
    var text: String
    var body: some View {
        Button(action: {}, label: {
            Text(text)
                .bold()
            
        })
        .frame(maxWidth: .infinity)
        .padding()
        .background(.blue)
        .mask(RoundedRectangle(cornerRadius: 10.0))
        .foregroundStyle(.white)
    }
}

#Preview {
    LargeButton(text: "")
}
