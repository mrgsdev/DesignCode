//
//  SecondView.swift
//  Tab Selection from Child View
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("SecondView")
            .font(.title).fontWeight(.bold)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
    }
}

#Preview {
    SecondView()
}
