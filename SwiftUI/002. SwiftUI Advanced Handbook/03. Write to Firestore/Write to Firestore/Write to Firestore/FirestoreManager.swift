//
//  FirestoreManager.swift
//  Read from Firestore
//
//  Created by mrgsdev on 15.07.2024.
//

import Foundation
import Firebase

class FirestoreManager: ObservableObject {
    // MARK: - Add a single field to a document
    func createRestaurant(restaurantName: String) {
        let db = Firestore.firestore()
        
        let docRef = db.collection("Restaurants").document(restaurantName)
        
        docRef.setData(["name": restaurantName]) { error in
            if let error = error {
                print("Error writing document: \(error)")
            } else {
                print("Document successfully written!")
            }
        }
    }
    
    // MARK: - Add multiple fields to a document
    // Create your docData variable first
    let docData: [String: Any] = [
        "name": "PoutineFiesta",
        "address": "1234 Restaurant St",
        "dateAdded": Timestamp(date: Date()),
    ]

    // Create the document in Firestore
    func createRestaurant2() {
            let db = Firestore.firestore()
            
            let docRef = db.collection("Restaurants").document("PoutineFiesta")

                    docRef.setData(docData) { error in
                        if let error = error {
                            print("Error writing document: \(error)")
                        } else {
                            print("Document successfully written!")
                        }
                    }
    }
    
    // MARK: - Update a field of an existing document
    func updateRestaurant(restaurantName: String, restaurantAddress: String) {
        let db = Firestore.firestore()
        
        let docRef = db.collection("Restaurants").document(restaurantName)
        
        // Use .setData with merge: true at the end so that it creates the document if it doesn't exist, see function below
        docRef.updateData(["address": restaurantAddress]) { error in
            if let error = error {
                print("Error updating document: \(error)")
            } else {
                print("Document successfully updated!")
            }
        }
    }
    
    // MARK: - Update a document or add it if it does not exist
    func mergeRestaurant(restaurantName: String, restaurantAddress: String) {
        let db = Firestore.firestore()
        
        let docRef = db.collection("Restaurants").document(restaurantName)
        
        docRef.setData(["address": restaurantAddress], merge: true) { error in
            if let error = error {
                print("Error updating document: \(error)")
            } else {
                print("Document successfully updated!")
            }
        }
    }
}


