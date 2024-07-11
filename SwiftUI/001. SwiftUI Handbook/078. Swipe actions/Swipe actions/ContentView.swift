//
//  ContentView.swift
//  Swipe actions
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack(alignment: .leading) {
                Text("My Inbox")
                    .font(.title).bold()
                    .padding(.horizontal)
                    
                List(messages) { message in
                    MessageRow(message: message)
                        .swipeActions {
                            Button {
                                print("Message deleted")
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                        }
                }
            }
        }
}

#Preview {
    ContentView()
}
