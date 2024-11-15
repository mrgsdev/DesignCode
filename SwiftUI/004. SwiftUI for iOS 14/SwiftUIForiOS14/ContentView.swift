//
//  ContentView.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 14.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image("Illustration 1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text("SwiftUI for iOS 14").fontWeight(.bold).foregroundColor(Color.white)
            Text("20 Sections").font(.footnote).foregroundColor(Color.white)
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(20.0)
        .shadow(radius: 10)
    }
}

#Preview {
    Group {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 200.0, height: 200.0))
            .preferredColorScheme(.dark)
    }
}
