//
//  LaunchCard.swift
//  ApolloGraphQL
//
//  Created by Stephanie Diep on 2021-02-11.
//

import SwiftUI

struct LaunchCard: View {
    var launch: Launches.Launch
    var arrayOfSpaceEmojis = ["🪐", "🚀", "🔭", "🛸", "👩🏾‍🚀", "🛰"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                Text("\(arrayOfSpaceEmojis.randomElement() ?? "🚀")")
                    .font(.title3)
                
                Text("LAUNCH ID: \(launch.id)")
                    .font(.title2)
                    .bold()
            }
            .padding(.vertical)
            .padding(.bottom)
         

            Text("LAUNCH SITE: \(launch.site)")
            Text("MISSION: \(launch.mission.name)")
            
            VStack(alignment: .leading) {
                Text("ROCKET:")
                VStack(alignment: .leading) {
                    Text("ID: \(launch.rocket.id)")
                    Text("ROCKET NAME: \(launch.rocket.name)")
                    Text("ROCKET TYPE: \(launch.rocket.type)")
                }
                .padding(.horizontal)
                
            }

            Text("IS BOOKED: \(String(launch.isBooked))")
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5098039216, green: 0.2549019608, blue: 0.737254902, alpha: 1)), Color(#colorLiteral(red: 0.8823529412, green: 0.2823529412, blue: 0.5215686275, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding()
    }
}

struct LaunchCard_Previews: PreviewProvider {
    static var previews: some View {
        LaunchCard(launch: previewLaunchData)
    }
}
