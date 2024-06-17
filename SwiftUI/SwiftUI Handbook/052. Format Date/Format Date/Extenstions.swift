//
//  extenstion.swift
//  Format Date
//
//  Created by mrgsdev on 15.06.2024.
//

import Foundation

extension Date {
    func formatDate() -> String {
        let dateFormattor = DateFormatter()
        dateFormattor.setLocalizedDateFormatFromTemplate("EEEE,MMM d")
        return dateFormattor.string(from: self)
    }
}
