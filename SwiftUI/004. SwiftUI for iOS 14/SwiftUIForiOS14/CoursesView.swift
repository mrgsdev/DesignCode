//
//  CoursesView.swift
//  SwiftUIForiOS14
//
//  Created by mrgsdev on 15.11.2024.
//


import SwiftUI

struct CoursesView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            CourseItem()
                .frame(width: 335, height: 250)
            VStack {
                if show {
                    CourseItem()
                        .transition(.move(edge: .leading))
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
//        .animation(.spring())
    }
}


#Preview {
    CoursesView()
}

