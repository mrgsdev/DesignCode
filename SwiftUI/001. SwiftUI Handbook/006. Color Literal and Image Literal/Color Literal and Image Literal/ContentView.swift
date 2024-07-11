//
//  ContentView.swift
//  Color Literal and Image Literal
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Color literal")
                .font(.title).bold()
                .foregroundStyle(Color("TextColorLiteral"))
        }
        .frame(width: 300,height: 200)
        .background(
            Image(uiImage:
                    UIImage(named: "backgroundColor")!)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
