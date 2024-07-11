//
//  ContentView.swift
//  SecureField
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var password = "Password"
    var body: some View {
        VStack {
             Text(password)
                .padding()
            SecureField("Password",text: $password)
                .padding()
                .textContentType(.password)
        }
        .font(.title).bold()
        .padding()
    }
}

#Preview {
    ContentView()
}
