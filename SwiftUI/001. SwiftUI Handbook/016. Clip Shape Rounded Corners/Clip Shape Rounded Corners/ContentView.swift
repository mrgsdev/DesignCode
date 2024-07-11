 //
//  ContentView.swift
//  Clip Shape Rounded Corners
//
//  Created by mrgsdev on 09.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI iOS 14")
                    .font(.title3).bold()
            }
            
            .frame(width: 300, height: 200)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0,style: .continuous))
        }
    }
}

#Preview {
    ContentView()
}
