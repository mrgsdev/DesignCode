//
//  CoursesView.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 15.11.2024.
//


import SwiftUI

struct CoursesView: View {
    var body: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        .listStyle(InsetGroupedListStyle())
    }
}