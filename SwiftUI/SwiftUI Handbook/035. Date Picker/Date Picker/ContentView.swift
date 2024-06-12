//
//  ContentView.swift
//  Date Picker
//
//  Created by mrgsdev on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var body: some View {
        VStack {
            DatePicker("Date", selection: $date, in: ...Date())
                .datePickerStyle(GraphicalDatePickerStyle())
                .font(.title).bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
