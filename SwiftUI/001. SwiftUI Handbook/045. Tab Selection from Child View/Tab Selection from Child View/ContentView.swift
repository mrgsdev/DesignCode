//
//  ContentView.swift
//  Tab Selection from Child View
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var tabSelection: Int
    var body: some View {
        Text("ContentView")
            .font(.title).fontWeight(.bold)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .onTapGesture {
                tabSelection = 2
            }
    }
}

#Preview {
    ContentView(tabSelection: .constant(1))
}
