//
//  Network.swift
//  HTTP request
//
//  Created by mrgsdev on 17.07.2024.
//

import SwiftUI
import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching users: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                DispatchQueue.main.async {
                    self.users = users
                }
            } catch {
                print("Error decoding users: \(error)")
            }
        }.resume()
    }
}
