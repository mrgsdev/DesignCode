//
//  ContentView.swift
//  Share Sheet
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: sharedButton) {
            Image(systemName: "square.and.arrow.up")
                .foregroundStyle(.black)
        }
    }
    func sharedButton(){
        let url = URL(string: "https://designcode.io")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController!
            .present(activityController, animated: true)
        
    }
}

#Preview {
    ContentView()
}
