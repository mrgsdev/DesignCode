//
//  ContentView.swift
//  Color Picker
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var firstColor = Color.blue
    @State var secondColor = Color.red
    var body: some View {
        VStack {
            ColorPicker("Color №1:", selection: $firstColor)
            ColorPicker("Color №2:", selection: $secondColor)
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [firstColor, secondColor]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
