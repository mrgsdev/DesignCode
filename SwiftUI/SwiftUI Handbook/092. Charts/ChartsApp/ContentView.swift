//
//  ContentView.swift
//  ChartsApp
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Day", "Jun 1"), y: .value("Value", 50))
            BarMark(x: .value("Day", "Jun 2"), y: .value("Value", 30))
                .foregroundStyle(.blue)
            BarMark(x: .value("Day", "Jun 3"), y: .value("Value", 20))
                .foregroundStyle(.teal)
        }
        Chart {
            BarMark(x: .value("Day", "Jun 1"), y: .value("Value", 50))
                .cornerRadius(10)
            BarMark(x: .value("Day", "Jun 2"), y: .value("Value", 30))
                .cornerRadius(10)
            BarMark(x: .value("Day", "Jun 3"), y: .value("Value", 20))
                .cornerRadius(10)
        }
        .foregroundStyle(
            .linearGradient(
                colors: [
                    .blue,
                    .purple
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        
        Chart {
            ForEach(data) { item in
                BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
            }
        }
        
        Chart {
            ForEach(data) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                         series: .value("Year", "2022"))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(.blue)
            }
            ForEach(data2) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value),
                         series: .value("Year", "2021"))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(.green)
            }
            
        }
    }
}
struct Value: Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

let data = [
    Value(day: "Jun 1", value: 200),
    Value(day: "Jun 2", value: 96),
    Value(day: "Jun 3", value: 312),
    Value(day: "Jun 4", value: 256),
    Value(day: "Jun 5", value: 505),
]

let data2 = [
    Value(day: "Jun 1", value: 151),
    Value(day: "Jun 2", value: 192),
    Value(day: "Jun 3", value: 176),
    Value(day: "Jun 4", value: 158),
    Value(day: "Jun 5", value: 401),
]

#Preview {
    ContentView()
}
