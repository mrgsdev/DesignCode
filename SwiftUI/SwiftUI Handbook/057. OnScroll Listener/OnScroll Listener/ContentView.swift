//
//  ContentView.swift
//  OnScroll Listener
//
//  Created by mrgsdev on 15.06.2024.
//

import SwiftUI
import SwiftUITrackableScrollView

struct ContentView: View {
    @State var scrollViewContentOffset = CGFloat(0)
    var body: some View {
        TrackableScrollView(.vertical,showIndicators: false,contentOffset: $scrollViewContentOffset){
            Text("\(scrollViewContentOffset)")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            
        }
        .onChange(of: scrollViewContentOffset, { oldValue, newValue in
            print(scrollViewContentOffset)
        })
         
            
        .padding()
    }
}

#Preview {
    ContentView()
}
