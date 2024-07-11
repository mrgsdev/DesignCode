//
//  ContentView.swift
//  Safe Area Layout
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea(.all, edges: .all)
            VStack{
                Text("Safe Area Layout").font(.title).bold()
            }
            .frame(width: 300,height: 200)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0,style: .continuous))
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
