//
//  CoursesView.swift
//  ScrollToTop
//
//  Created by mrgsdev on 15.06.2024.
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
                .id(2)
            
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<10) { number in
                    CourseCard(image: "illustration2", title: "Flutter for designers", hours: "23 sections - 4 hours", colors: [Color(#colorLiteral(red: 0.2941176471, green: 0.7450980392, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1294117647, green: 0.4196078431, blue: 0.8549019608, alpha: 1))], logo: "flutter-logo")
                }
            }
            .padding(20)
        }
        .navigationBarHidden(true)
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
