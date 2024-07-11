//
//  ContentView.swift
//  Matched Geometry Effect
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            if !show {
                ScrollView {
                   
                    HStack {
                        VStack {
                            Text("Title")
                                .foregroundStyle(.white)
                                .font(.title).bold()
                                .matchedGeometryEffect(id: "title", in: namespace)
                        }
                        .frame(width: 100, height: 100)
                        .background(Rectangle()
                            .matchedGeometryEffect(id: "shape", in: namespace)
                            )
                        
                        Rectangle()
                            .frame(width: 100, height: 100)
                        Spacer()
                    }
                    .padding()
                }
            } else {
                VStack {
                    Text("Title")
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                        .padding()
                        .foregroundStyle(.white)
                        .font(.title).bold()
                        
                }
                .frame(maxWidth: .infinity,maxHeight: 400)
                .background(
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    )
                
            }
                 
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)){
                show.toggle()
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
