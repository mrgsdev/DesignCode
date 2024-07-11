//
//  ContentView.swift
//  Remote Images
//
//  Created by mrgsdev on 14.06.2024.
//

import SwiftUI
import SDWebImageSwiftUI
struct ContentView: View {
    let myPhotoURL = URL(string: "https://fastly.picsum.photos/id/336/200/200.jpg?hmac=VZ7MzNM30jINYNf5Oj_8zqPLTDAyKDk6eXWTGnNb4bU")

       var body: some View {
           Text("SDWebImageSwiftUI")
               .font(.headline)
               .foregroundStyle(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
               )
           WebImage(url: myPhotoURL)
               .renderingMode(.original)
               .resizable()
               .aspectRatio(contentMode: .fill)
               .frame(width: 100, height: 100) 
               .background(.red)
           
       }

}

#Preview {
    ContentView()
}
