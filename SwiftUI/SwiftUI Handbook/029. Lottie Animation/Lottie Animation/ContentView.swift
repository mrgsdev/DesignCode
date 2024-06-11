//
//  ContentView.swift
//  Lottie Animation
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        LottieView(loopMode: .loop)
            .frame(width: 400,height: 400)
        
    }
}

#Preview {
    ContentView()
}
