//
//  Animal.swift
//  Data from JSON
//
//  Created by mrgsdev on 17.07.2024.
//

import Foundation
import SwiftUI

struct Animal: Codable, Identifiable {
    var id: Int
    var name: String
    var age: Int
    var type: String
}
