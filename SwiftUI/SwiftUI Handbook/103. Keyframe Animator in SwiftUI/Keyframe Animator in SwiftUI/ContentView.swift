//
//  ContentView.swift
//  Keyframe Animator in SwiftUI
//
//  Created by mrgsdev on 06.07.2024.
//

import SwiftUI

struct ContentView: View {
    struct AnimationValues {
        var scale = 1.0
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 200, height: 200)
            .keyframeAnimator(initialValue: AnimationValues()) { content, value in
                content.scaleEffect(value.scale)
            } keyframes: { value in
                KeyframeTrack(\.scale) {
                    SpringKeyframe(2)
                    CubicKeyframe(1, duration: 1)
                }
            }
    }
}

#Preview {
    ContentView()
}
