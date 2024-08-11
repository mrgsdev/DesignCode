//
//  UpdateStore.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 01.08.2024.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
