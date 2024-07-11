//
//  ContentView.swift
//  HideKeyboard
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack() {
            SignInView()
        }
        .background(.white)
        .cornerRadius(30)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

#Preview {
    ContentView()
}
