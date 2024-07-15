//
//  ContentView.swift
//  Numeric Text Animation using ContentTransition
//
//  Created by mrgsdev on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Content Transition")

            HStack(spacing: 30) {
                Button(action: { count -= 1 }) {
                    Image(systemName: "minus.circle.fill")
                }

                Text("\(count)")
                    .font(.system(size: 60, weight: .bold, design: .rounded))
                    .contentTransition(.numericText(countsDown: true))
                    .animation(.spring(response: 0.3, dampingFraction: 0.8), value: count)

                Button(action: { count += 1 }) {
                    Image(systemName: "plus.circle.fill")
                }
            }
            .padding()
        }
        .font(.system(.largeTitle, design: .rounded))
        .bold()
    }
}

#Preview {
    ContentView()
}
