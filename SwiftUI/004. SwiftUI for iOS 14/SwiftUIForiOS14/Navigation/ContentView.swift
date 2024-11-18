//
//  ContentView.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 14.11.2024.
//

import SwiftUI

struct ContentView: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        Sidebar()
        #else
        Sidebar()
            .frame(minWidth: 1000, minHeight: 600)
        #endif
    }
}
 


#Preview {
    Group {
        ContentView() 
    }
}
