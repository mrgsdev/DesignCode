//
//  ContentView.swift
//  Read from Firestore
//
//  Created by mrgsdev on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    @State private var restaurant = ""
    @State private var restaurantName = ""
    @State private var address = ""
    
    var body: some View {
        VStack(spacing: 50) {
            VStack(alignment: .leading, spacing: 20) {
                Text("Add a restaurant")
                    .font(.title).bold()
                
                TextField("Restaurant name", text: $restaurant)
                    .padding(.horizontal, 16)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .padding(.vertical, 16)
                    .frame(width: 335, height: 52, alignment: .leading)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                
                GradientButton(text: "Submit")
                    .onTapGesture {
                        firestoreManager.createRestaurant(restaurantName: restaurant)
                    }
            }
            .padding()
            .border(Color.black.opacity(0.2), width: 1)
            
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Update a restaurant")
                    .font(.title).bold()
                
                TextField("Restaurant name", text: $restaurantName)
                    .padding(.horizontal, 16)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .padding(.vertical, 16)
                    .frame(width: 335, height: 52, alignment: .leading)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                
                TextField("Restaurant address", text: $address)
                    .padding(.horizontal, 16)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .padding(.vertical, 16)
                    .frame(width: 335, height: 52, alignment: .leading)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                
                GradientButton(text: "Submit")
                    .onTapGesture {
                        firestoreManager.updateRestaurant(restaurantName: restaurantName, restaurantAddress: address)
                    }
            }
            .padding()
            .border(Color.black.opacity(0.2), width: 1)

        }
    }
}
#Preview {
    ContentView()
        .environmentObject(FirestoreManager())
}

