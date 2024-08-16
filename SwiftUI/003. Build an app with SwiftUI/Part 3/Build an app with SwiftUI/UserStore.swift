//
//  UserStore.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 16.08.2024.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
    @Published var isLogged = false
    @Published var showLogin = false
}
