//
//  NewView.swift
//  Full Screen Modal
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct NewView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black, Color.brown]),
                        startPoint: .bottomLeading,
                        endPoint: .topTrailing
                    )
                ).ignoresSafeArea()
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
            Text("Close New View")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .onTapGesture {
                    dismiss.callAsFunction()
                }
        }
        
    }
}

#Preview {
    NewView()
}
