//
//  CourseList.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 18.11.2024.
//


import SwiftUI

struct CourseList: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 800, minHeight: 600)
        #endif
    }
    var content: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
}
