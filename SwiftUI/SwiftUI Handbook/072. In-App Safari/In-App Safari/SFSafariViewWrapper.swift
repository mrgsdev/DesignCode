//
//  SFSafariViewWrapper.swift
//  In-App Safari
//
//  Created by mrgsdev on 24.06.2024.
//

import SwiftUI
import SafariServices

struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let URL: URL
    
    func makeUIViewController(context: Context) -> some SFSafariViewController {
        return SFSafariViewController(url: URL)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        return
    }
}
