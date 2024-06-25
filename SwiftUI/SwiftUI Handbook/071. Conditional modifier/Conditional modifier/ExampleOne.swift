//
//  ExampleOne.swift
//  Conditional modifier
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ExampleOne: View {
    @State var shouldBeRed = false
    var body: some View {
        if shouldBeRed {
            Text("Hello World!")
                .font(.title).bold()
                .padding()
                .foregroundStyle(.red)
        } else {
            Text("Goodbye")
                .font(.title).bold()
                .padding()
                .foregroundStyle(.green)
        }
       
    }
}

#Preview {
    ExampleOne()
}
