//
//  ContentView.swift
//  Long Press Gesture
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @GestureState var press = false
    @State var show = false
    var body: some View {
        Image(systemName: show ? "camera.fill" : "camera" )
            .foregroundStyle(show ? .white : .black)
            .frame(width: 60 ,height: 60)
        
            .background(show ? .black : .yellow)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring,value: press)
            .gesture(
                LongPressGesture(minimumDuration: 0.5).updating($press) { currentState ,gestureState,transaction in
                    
                    gestureState = currentState
                    
                }
                    .onEnded({ value in
                        show.toggle()
                    })
                
            )
        
        
    }
}

#Preview {
    ContentView()
}
