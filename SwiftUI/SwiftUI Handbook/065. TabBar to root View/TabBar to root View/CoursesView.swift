//
//  CoursesView.swift
//  TabBar to root View
//
//  Created by mrgsdev on 23.06.2024.
//

import SwiftUI

struct CoursesView: View {
    var columns = [GridItem(.adaptive(minimum: 159), spacing: 16)]

    var body: some View {
        ScrollView {
            Text("Courses")
                .font(.largeTitle).bold()
                .padding(.horizontal, 20)
                .padding(.top, 17)
                  
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<10) { number in
                    NavigationLink(destination: ChildView(courseTitle: "Flutter for designers")) {
                        CourseCard(
                            image: "illustration2",
                            title: "Flutter for designers",
                            hours: "23 sections - 4 hours",
                            colors: [.accentColor, .blue],
                            logo: "flutter-logo"
                        )
                    }
                }
            }
            .padding(20)
        }
        .navigationBarHidden(true)
    }
}


#Preview {
    CoursesView()
}
