//
//  ContentView.swift
//  HTTP request
//
//  Created by mrgsdev on 17.07.2024.
//

import SwiftUI

struct ContentView: View  {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text(user.email)
                        .font(.subheadline)
                    Text(user.phone)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Users")
        }
    }
}



#Preview {
    ContentView()
}
