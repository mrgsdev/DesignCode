//
//  PlayView.swift
//  Advanced Matched Geometry Effect
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct PlayView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .matchedGeometryEffect(id: "cover", in: namespace)
                .frame(height: 300)
                .padding()
            Text("Fever")
                .matchedGeometryEffect(id: "nameSong", in: namespace)
            HStack {
                Image(systemName: "play.fill").font(.title)
                    .matchedGeometryEffect(id: "play", in: namespace)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in: namespace)
                    .font(.title)
                
            }
        }
        
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(RoundedRectangle(cornerRadius: 0).fill(.blue))
        .matchedGeometryEffect(id: "background", in: namespace)
        .ignoresSafeArea()
    }
}

#Preview {
    @Namespace var namespace
    return PlayView(namespace: namespace)
}
