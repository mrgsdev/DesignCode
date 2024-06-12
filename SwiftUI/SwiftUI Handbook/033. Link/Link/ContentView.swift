//
//  ContentView.swift
//  Link
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Link("SwiftUI Handbook", destination: URL(string: "https://designcode.io/swiftui-handbook")!)
                    .font(.largeTitle).bold()
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.red,
                                    Color.blue
                                ]
                            ),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                Image(systemName: "book")
                    .font(.title)
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.red,
                                    Color.blue
                                ]
                            ),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            }
            Text("TAUGHT BY MENG TO")
                .font(.subheadline).bold()
                .foregroundStyle(.gray)
        }
         
    }
}

#Preview {
    ContentView()
}
