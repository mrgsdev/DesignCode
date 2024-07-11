//
//  ContentView.swift
//  Controls with AVPlayer
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI
import AVKit
struct ContentView: View {
    @State var player = AVPlayer()
    @State var videoStartTime = CMTimeMake(value: 10, timescale: 1)
    var videoURL = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    
    var body: some View {
        VStack {
            VideoPlayer(player: player).ignoresSafeArea()
                .onAppear {
                    player = AVPlayer(url: videoURL!)
//                    player.play()
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
//                        player.pause()
//                    }
                  
                    player.seek(to: videoStartTime)
                    player.rate = 1.5
                    let currentTime = player.currentTime()
                    print(CMTimeGetSeconds(currentTime))
                    let duration = player.currentItem?.asset.duration
                }
        }
     
    }
}

#Preview {
    ContentView()
}
