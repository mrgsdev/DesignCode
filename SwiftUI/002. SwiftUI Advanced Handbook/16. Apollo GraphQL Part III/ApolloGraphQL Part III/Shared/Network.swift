//
//  Network.swift
//  ApolloGraphQL
//
//  Created by Stephanie Diep on 2021-02-11.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
    let url = "https://apollo-fullstack-tutorial.herokuapp.com" // Udapte this link with your API link
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
