//
//  SignInWithAppleButton.swift
//  Advanced Development in SwiftUI
//
//  Created by mrgsdev on 13.12.2024.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: UIViewRepresentable {
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
    
    typealias UIViewType = ASAuthorizationAppleIDButton
    
    
    
    
}
