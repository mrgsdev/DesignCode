//
//  ContentView.swift
//  Dismiss Custom Modal
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Welcome!")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                    .frame(height: 20)
                
                GradientButton(text: "Show Modal")
                    .padding()
                    .onTapGesture {
                        print("1")
                        showModal = true
                    }
            }
            .padding()
            if showModal {
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                
                    .onTapGesture {
                        
                        showModal = false
                    }
                SignInView()
                
                
            }
                 
        }
        .animation(.spring(),value: showModal)
        
    }
}


#Preview {
    ContentView()
}
