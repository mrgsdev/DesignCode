//
//  ContentView.swift
//  Format Date
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var stringDate = "2022-02-01T09:45:00.000+02:00"
        VStack {
            
//            Text("\(Date().formatDate())")
            Text("\(formateStringDate(date: stringDate))")
                .font(.title.bold())
        }
        .padding()
    }
    func formateStringDate(date:String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let newDate = dateFormatter.date(from: date)
        return newDate!.formatDate()
    }
}

#Preview {
    ContentView()
}
