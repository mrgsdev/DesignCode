//
//  TutorialsView.swift
//  Sidebar
//
//  Created by mrgsdev on 08.06.2024.
//

import SwiftUI

struct TutorialsView: View {
    var body: some View {
        VStack {
            ZStack {
                HStack(spacing: 20) {
                    Circle()
                        .frame(height: 100)
                        .overlay(
                            Circle()
                                .frame(height: 30)
                                .foregroundStyle(.yellow)
                    )
                    Circle()
                        .frame(height: 100)
                        .overlay(
                            Circle()
                                .frame(height: 30)
                                .foregroundStyle(.yellow)
                        )
                    Circle()
                        .frame(height: 100)
                        .overlay(
                            Circle()
                                .frame(height: 30)
                                .foregroundStyle(.yellow)
                        )
                    Circle()
                        .frame(height: 100)
                        .overlay(
                            Circle()
                                .frame(height: 30)
                                .foregroundStyle(.yellow)
                        )
                        
                }
                .padding()
            }
            Spacer()
            Text("Tutorials").font(.title).bold()
                .navigationTitle("Tutorials")
        }
    }
}

#Preview {
    TutorialsView()
}
