//
//  NewView.swift
//  Binding
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct NewView: View {
    @Binding var show: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(.blue)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    show.toggle()
                }
            }
    }
}

#Preview {
    NewView(show: .constant(true))
}
