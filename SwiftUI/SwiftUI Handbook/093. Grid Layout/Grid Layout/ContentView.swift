//
//  ContentView.swift
//  Grid Layout
//
//  Created by mrgsdev on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid(alignment: .leading,horizontalSpacing: 12,verticalSpacing: 12)  {
            GridRow {
                Text("Votes")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)
                Text("Rating")
                
            }
            Divider().gridCellUnsizedAxes(.horizontal)
            
            GridRow {
                Text("4")
                ProgressView(value: 0.1)
                RatingView(rating: 1)
            }
            GridRow {
                Text("21")
                ProgressView(value: 0.2)
                RatingView(rating: 2)
            }
            GridRow {
                Text("5")
                ProgressView(value: 0.1)
                RatingView(rating: 3)
            }
            GridRow {
                Text("52")
                ProgressView(value: 0.5)
                RatingView(rating: 4)
            }
            GridRow {
                Text("67")
                ProgressView(value: 0.6)
                RatingView(rating: 5)
            }
        }
        .padding(20)
    }
}

#Preview {
    ContentView()
}

struct RatingView: View {
    var rating = 3
    let list = [1, 2, 3, 4, 5]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(list, id: \.self) { item in
                Image(systemName: rating >= item ? "star.fill" : "star")
            }
        }
    }
}
