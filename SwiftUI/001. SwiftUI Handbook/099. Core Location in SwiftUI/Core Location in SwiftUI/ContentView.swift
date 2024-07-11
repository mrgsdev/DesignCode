//
//  ContentView.swift
//  Core Location in SwiftUI
//
//  Created by mrgsdev on 04.07.2024.
//

import SwiftUI
import CoreLocationUI
struct ContentView: View {
    @ObservedObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            Circle()
            
          
                .trim(from: 0, to: 1)
                .stroke(
                    AngularGradient(
                        gradient: Gradient(
                            colors: [.white, .gray, .blue, .black, .purple, .white]
                        ),
                        center: .center
                    ),
                    lineWidth: 20
                )
                .rotationEffect(.degrees(locationManager.degrees))
                .animation(.easeInOut(duration: 0.5), value: locationManager.degrees)
                .frame(width: 200)
                .overlay {
                    
                       
                    Image(systemName: "arrow.up")
                        .resizable()
                        .frame(width: 70, height: 90)
                    
                        .rotationEffect(.degrees(locationManager.degrees))
                        .animation(.easeInOut(duration: 0.5), value: locationManager.degrees)
                    
                }
            
            
            
            Text("\(String(format: "%.0f", locationManager.degrees))º".uppercased())
                .font(.largeTitle)
            if let myLocation = locationManager.location {
                Text(
                    "Latitude: \(myLocation.latitude.formatted(.number.precision(.fractionLength(0)))), Longitude: \(myLocation.longitude.formatted(.number.precision(.fractionLength(0))))".uppercased()
                    
                )
                .font(.caption2).bold()
            } else {
                LocationButton {
                    locationManager.requestLocation()
                }
                .labelStyle(.iconOnly)
                .cornerRadius(20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
