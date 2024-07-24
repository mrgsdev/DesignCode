//
//  LaunchModel.swift
//  ApolloGraphQL
//
//  Created by Stephanie Diep on 2021-02-11.
//

import Foundation

typealias LaunchData = LaunchListQuery.Data.Launch

struct Launches: Decodable {
    var launches: [Launch]
    
    init(_ launches: LaunchData?) {
        self.launches = launches?.launches.map({ launch -> Launch in
            Launch(launch)
        }) ?? []
    }
    
    struct Launch: Identifiable, Decodable {
        var id: String
        var site: String
        var mission: Mission
        var rocket: Rocket
        var isBooked: Bool
        
        init(_ launch: LaunchData.Launch?) {
            self.id = launch?.id ?? ""
            self.site = launch?.site ?? ""
            self.mission = Mission(launch?.mission)
            self.rocket = Rocket(launch?.rocket)
            self.isBooked = launch?.isBooked ?? false
        }
        
        struct Mission: Decodable {
            var name: String
            
            init(_ mission: LaunchData.Launch.Mission?) {
                self.name = mission?.name ?? ""
            }
        }
        
        struct Rocket: Identifiable, Decodable {
            var id: String
            var name: String
            var type: String
            
            init (_ rocket: LaunchData.Launch.Rocket?) {
                self.id = rocket?.id ?? ""
                self.name = rocket?.name ?? ""
                self.type = rocket?.type ?? ""
            }
        }
    }
}
