//
//  ContentView.swift
//  Metal Shaders in SwiftUI
//
//  Created by mrgsdev on 06.07.2024.
//

import SwiftUI

struct ContentView: View {
    let startDate = Date()

    var body: some View {
        TimelineView(.animation) { context in
            Image(systemName: "figure.run.circle.fill")
                .font(.system(size: 300))
                .visualEffect { content, proxy in
                    content
                        .distortionEffect(ShaderLibrary.complexWave(
                            .float(startDate.timeIntervalSinceNow),
                            .float2(proxy.size),
                            .float(0.5),
                            .float(8),
                            .float(10)
                        ), maxSampleOffset: .zero)
                }
        }
    }
}

#Preview {
    ContentView()
}
