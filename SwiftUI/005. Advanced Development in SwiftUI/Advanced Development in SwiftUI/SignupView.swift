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
    
    private let generator = UISelectionFeedbackGenerator()
    
    var body: some View {
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sign Up")
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
                        buttonTitle: "Create account") {
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
                    Text("By clicking on Sign up, you agree to our Terms of service and Privacy policy.")
                        .font(.footnote)
                        .foregroundColor(Color.white.opacity(0.7))
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.white.opacity(0.1))
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Button {
                            print("Switch Sign In")
                        } label: {
                            HStack(spacing: 4) {
                                Text("Already have an account?")
                                    .font(.footnote)
                                    .foregroundColor(Color.white.opacity(0.7))
                                GradientText(text: "Sign In")
                                    .font(.footnote)
                                    .bold()
                                
                            }
                        }
                    }
                }
                .padding(20)
            }
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
        }
        .fullScreenCover(isPresented: $showProfileView) {
            ProfileView()
        }
    }
    func signup() {
        
              Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                  guard error == nil else {
                      print(error!.localizedDescription)
                      return
                  }
                  print("User sign up")
              }
           
      }
}

 

#Preview {
    SignupView()
}


