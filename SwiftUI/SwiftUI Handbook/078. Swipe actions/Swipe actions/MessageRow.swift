//
//  MessageRow.swift
//  Swipe actions
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI
 
struct MessageRow: View {
    var message: Message
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(message.title)
                .font(.headline)
                .bold()
            
            Text(message.content)
                .foregroundColor(.gray)
                .lineLimit(2)
        }
    }
}


#Preview {
    MessageRow(
        message: Message(
            title: "Hello",
            content: "Hello my friend, how have you been? I've been wondering if you'd like to meet up sometime."
        )
    )
}
