//
//  ContentView.swift
//  Stacks and Spacer
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Spacer()
        ZStack {
            VStack(alignment: .center, spacing: 20) {
     
                Rectangle()
                    .frame(height: 33)
                    .overlay(
                        Text("overlay(Text) ")
                            .foregroundStyle(.white)
                    )
                    .foregroundStyle(.pink)
        
                Text("blue = VStack")
                    .font(.title)
                    
                HStack(alignment: .center, spacing: 5) {
                    Text("Gray =")
                    Text("HStack")
 
                }
                
                .background(.gray)
         
                   
            }
            .background(.blue)
            .frame(width: 250)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
        }
        Spacer()
       
//        ZStack(alignment: .topLeading) {
//            Rectangle()
//                .foregroundStyle(.blue)
//                Text("Hello, world!")
//                    .font(.title)
//                Text("Second line")
//        }
//        .padding()
//        .frame(width: 320)
        
//        HStack(alignment: .center, spacing: 16) {
////            Spacer()
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
////            Spacer()
//
//        }
//        .padding()
//        .frame(width: 320)
        
//        HStack(alignment: .center, spacing: 16) {
//            Spacer()
//            Rectangle()
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
//            Spacer()
//        }
//        .padding()
//
//        VStack(alignment: .leading, spacing: 16) {
//            Text("Hello, world!")
//                .font(.title)
//            Text("Second line")
//        }
        
    }
}

#Preview {
    ContentView()
}
