//
//  CloseButton.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 25.11.2024.
//


import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.white)
            .padding(.all, 10)
            .background(Color.black.opacity(0.6))
            .clipShape(Circle())
    }
}
