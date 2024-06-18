//
//  ContentView.swift
//  Play Video with AVPlayer
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    var videoURL = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    var body: some View {
        VideoPlayer(player: player).ignoresSafeArea()
            .onAppear{
                player = AVPlayer(url: videoURL!)
            }
    }
}

#Preview {
    ContentView()
}
