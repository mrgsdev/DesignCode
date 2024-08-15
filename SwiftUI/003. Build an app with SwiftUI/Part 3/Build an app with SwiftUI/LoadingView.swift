//
//  LoadingView.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 15.08.2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
           VStack {
               LottieView(filename: "loading")
                   .frame(width: 200, height: 200)
           }
       }
}

#Preview {
    LoadingView()
}
