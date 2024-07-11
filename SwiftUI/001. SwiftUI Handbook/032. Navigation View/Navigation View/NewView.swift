//
//  NewView.swift
//  Navigation View
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.red,
                    Color.blue
                ]
            ) ,
            startPoint: .leading,
            endPoint: .trailing
        ).overlay(
            Text("Hello, World!")
                .font(.largeTitle).bold()
                .foregroundStyle(LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.black,
                            .pink,
                            Color.yellow,
                        ]
                    ) ,
                    startPoint: .bottomLeading,
                    endPoint: .trailing
                ))
        )
        .ignoresSafeArea()
    }
}

#Preview {
    NewView()
}
