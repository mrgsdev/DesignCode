import UIKit

let date = Date()

// MARK: - ENTIRE DATE
// Format today's date
date.formatted()

// Format today's date as "Aug 20, 2024"
date.formatted(.dateTime.day().month().year())

// Format today's date as "Aug 20"
date.formatted(.dateTime.day().month())

// MARK: - MONTH
// Get today's month (Aug)
date.formatted(.dateTime.month())

// Get today's entire month name (August)
date.formatted(.dateTime.month(.wide))

// MARK: - WEEKDAY
// Get today's weekday (Fri)
date.formatted(.dateTime.weekday())

// Get today's weekday (Friday)
date.formatted(.dateTime.weekday(.wide))

// MARK: - DAY
// Only get today's day (20)
date.formatted(.dateTime.day())
