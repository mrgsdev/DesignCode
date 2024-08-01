//
//  UpdateDetail.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 01.08.2024.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update
       
       var body: some View {
           List {
               VStack(spacing: 20) {
                   Image(update.image)
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(maxWidth: .infinity)
                   Text(update.text)
                       .frame(maxWidth: .infinity, alignment: .leading)
               }
               .navigationBarTitle(update.title)
           }
           .listStyle(PlainListStyle())
       }

}

#Preview {
    UpdateDetail(update: updateData[1])
}
