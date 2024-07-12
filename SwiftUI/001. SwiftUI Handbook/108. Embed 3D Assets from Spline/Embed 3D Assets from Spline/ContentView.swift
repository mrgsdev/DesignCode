//
//  ContentView.swift
//  Embed 3D Assets from Spline
//
//  Created by mrgsdev on 10.07.2024.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/wumx7nDokhnW1ohf53wQ/scene.splineswift")!
        
        try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
