//
//  ContentView.swift
//  User Defaults
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    let savedCurrency = UserDefaults.standard.string(forKey: "CAD")
    
    var body: some View {
        VStack {
            Text("UserDefaults")
                .font(.title).bold()
            Text("Saved Currency: \(savedCurrency!)")
                .font(.footnote)
                .onAppear{
                    print("onAppear")
                    let preferredCurrenct = "CAD"
                    UserDefaults.standard.setValue(preferredCurrenct, forKey: "CAD")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
