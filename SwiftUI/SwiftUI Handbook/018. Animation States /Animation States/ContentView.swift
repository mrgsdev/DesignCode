//
//  ContentView.swift
//  Animation States
//
//  Created by mrgsdev on 09.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        VStack {
            Text("View more!")
                .bold()
                .foregroundStyle(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(.blue)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .shadow(color: .blue.opacity(1), radius: 20,y: 10)
        .onTapGesture {
            withAnimation(.spring) {
                show.toggle()
            }
           
        }
    }
}

#Preview {
    ContentView()
}
