//
//  ContentView.swift
//  Advanced Development in SwiftUI
//
//  Created by mrgsdev on 03.12.2024.
//

import SwiftUI
import AudioToolbox
import FirebaseAuth

struct SignupView: View {
    @State var email = ""
    @State var password = ""
    @State private var editingEmailTextfield = false
    @State private var editingPasswordTextfield = false
    @State private var emailIconBounce = false
    @State private var passwordIconBounce = false
    
    @State private var showProfileView = false
    @State private var signupToggle = true
    
    @State private var rotationAngle = 0.0
    
    private let generator = UISelectionFeedbackGenerator()
    
    var body: some View {
        ZStack {
            Image(signupToggle ? "background-3" : "background-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text(signupToggle ? "Sign up" : "Sign in")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials and livestreams")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.7))
                    HStack(spacing: 12) {
                        TextfieldIcon(iconName: "envelope.open.fill", currentlyEditing: $editingEmailTextfield)
                            .scaleEffect(emailIconBounce ? 1.2 : 1.0)
                        TextField("Email",text: $email){ isEditing in
                            editingEmailTextfield = isEditing
                            editingPasswordTextfield = false
                            generator.selectionChanged()
                            if isEditing {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.5)) {
                                    emailIconBounce.toggle()
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
                                    withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.5)) {
                                        emailIconBounce.toggle()
                                    }
                                }
                            }
                        }
                        .colorScheme(.dark)
                        .foregroundColor(Color.white.opacity(0.7))
                        .autocapitalization(.none)
                        .textContentType(.emailAddress)
                    }
                    .frame(height: 52)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .circular)
                            .stroke(Color.white, lineWidth: 1)
                            .blendMode(.overlay)
                    )
                    .background(
                        Color("secondaryBackground")
                            .cornerRadius(16)
                            .opacity(0.8)
                    )
                    
                    HStack(spacing: 12) {
                        TextfieldIcon(iconName: "key.fill", currentlyEditing: $editingPasswordTextfield)
                            .scaleEffect(passwordIconBounce ? 1.2 : 1.0)
                        TextField("Password",text: $password){ isEditing in
                            editingEmailTextfield = false
                            editingPasswordTextfield = isEditing
                            
                        }
                        .colorScheme(.dark)
                        .foregroundColor(Color.white.opacity(0.7))
                        .autocapitalization(.none)
                        .textContentType(.password)
                    }
                    .frame(height: 52)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .circular)
                            .stroke(Color.white, lineWidth: 1)
                            .blendMode(.overlay)
                    )
                    .background(
                        Color("secondaryBackground")
                            .cornerRadius(16)
                            .opacity(0.8)
                    )
                    .onTapGesture {
                        generator.selectionChanged()
                        editingEmailTextfield = false
                        editingPasswordTextfield = true
                        if editingPasswordTextfield {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.5)) {
                                passwordIconBounce.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now()+0.25) {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.4, blendDuration: 0.5)) {
                                    passwordIconBounce.toggle()
                                }
                            }
                        }
                    }
                    
                    GradientButton(
                        buttonTitle: signupToggle ? "Create account" : "Sign in") {
                            generator.selectionChanged()
                            signup()
                        }
                        .onAppear {
                            Auth.auth().addStateDidChangeListener { auth,  user in
                                if user != nil {
                                    showProfileView.toggle()
                                }
                            }
                        }
                    if signupToggle {
                        Text("By clicking on Sign up, you agree to our Terms of service and Privacy policy.")
                            .font(.footnote)
                            .foregroundColor(Color.white.opacity(0.7))
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.white.opacity(0.1))
                    }
                    VStack(alignment: .leading, spacing: 16) {
                        Button {
                            withAnimation(.easeInOut(duration: 0.7)){
                                signupToggle.toggle()
                                self.rotationAngle += 180
                            }
                        } label: {
                            HStack(spacing: 4) {
                                Text(signupToggle ? "Already have an account?" : "Don't have an account?")
                                    .font(.footnote)
                                    .foregroundColor(Color.white.opacity(0.7))
                                GradientText(text: signupToggle ? "Sign in" : "Sign up")
                                    .font(.footnote)
                                    .bold()
                                
                            }
                        }
                        if !signupToggle {
                            Button(action: {
                                print("Send email")
                            }, label: {
                                HStack(spacing: 4) {
                                    Text("Forgot password?")
                                        .font(.footnote)
                                        .foregroundColor(Color.white.opacity(0.7))
                                    GradientText(text: "Reset Password")
                                        .font(Font.footnote.bold())
                                }
                            })
                            
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color.white.opacity(0.1))
                            
                            
                        }
                    }
                }
                .padding(20)
            }
            .rotation3DEffect(Angle(degrees: rotationAngle), axis: (x: CGFloat(0), y: CGFloat(1), z: CGFloat(0)))
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.white.opacity(0.2))
                    .background(Color("secondaryBackground"))
                    .opacity(0.5)
                    .background(VisualEffectBlur(blurStyle: .systemMaterialDark))
                    .shadow(color: Color("shadowColor").opacity(0.5), radius: 60, x: 0, y: 30)
            )
            .cornerRadius(30)
            .padding(.horizontal)
            .rotation3DEffect(Angle(degrees: rotationAngle), axis: (x: CGFloat(0), y: CGFloat(1), z: CGFloat(0)))
                       
        }
        .fullScreenCover(isPresented: $showProfileView) {
            ProfileView()
        }
    }
    func signup() {
        if signupToggle {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                print("User sign up")
            }
        } else {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                print("User sign in")
            }
            
        }
        
        
    }
}



#Preview {
    SignupView()
}


