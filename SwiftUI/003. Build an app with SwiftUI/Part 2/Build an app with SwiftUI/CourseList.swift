//
//  CourseList.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 04.08.2024.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        VStack {
            CourseView()
        }
    }
}

#Preview {
    CourseList()
}

struct CourseView: View {
    @State var show = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("SwiftUI Advanced")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                    Text("20 Sections")
                        .foregroundColor(Color.white.opacity(0.7))
                }
                Spacer()
                Image("Logo1")
            }
            Spacer()
            Image("Card2")
                .resizable()
                .aspectRatio(contentMode: show ? .fill : .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 140, alignment: .top)
        }
        .padding(show ? 30 : 20)
        .padding(.top, show ? 30 : 0)
//        .frame(width: show ? screen.width : screen.width - 60, height: show ? screen.height : 280)
        .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280)
        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0),value: show)
        .onTapGesture {
            self.show.toggle()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

