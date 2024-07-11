//
//  ChildView.swift
//  TabBar to root View
//
//  Created by mrgsdev on 23.06.2024.
//

import SwiftUI

struct ChildView: View {
    var courseTitle: String
    
    var body: some View {
        VStack {
            Text(courseTitle)
                .font(.title).bold()
                .padding()
            
            Text("This is the child view.")
        }
    }
}

#Preview {
    ChildView(courseTitle: "SwiftUI for iOS 14")
}
