//
//  CourseStore.swift
//  Build an app with SwiftUI
//
//  Created by mrgsdev on 08.08.2024.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "t0b6pv3oa6ad", accessToken: "u3CVhboWKK4oAGPGgP6aIy87ATM68Xc_7gOrsz7alSI")

func getArray() {
    let query = Query.where(contentTypeId: "course")
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
}
