//
//  ExampleTwo.swift
//  Conditional modifier
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI

struct ExampleTwo: View {
    @State var shouldBeRed = false
    var body: some View {
        
        Text(shouldBeRed ? "Hello World!" : "Goodbye")
                .font(.title).bold()
                .padding()
                .foregroundStyle(shouldBeRed ? .red : .green)
       
       
    }
}

#Preview {
    ExampleTwo()
}
