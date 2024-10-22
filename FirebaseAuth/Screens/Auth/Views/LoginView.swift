//
//  LoginView.swift
//  FirebaseAuth
//
//  Created by Ashish Langhe on 22/10/24.
//

import SwiftUI

struct LoginView: View {
    
    //Variables
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var line: some View {
        VStack {
            Divider().frame(height:1)
        }
    }
    
    var body: some View {
        ScrollView {
            VStack (spacing: 16) {
                
                //logo
            Image("login")
                    .resizable()
                    .scaledToFit()
                
                //title
                Text("Let's Connect With US!")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                    .frame(height: 12)
                
                //text-fields
                InputView(
                    placeholder: "Email",
                    text: $email
                )
                
                InputView(
                    placeholder: "Password",
                    isSecuredField: true,
                    text: $password
                )
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot Password?")
                            .foregroundStyle(.gray)
                            .fontWeight(.medium)
                            .font(.subheadline)
                    })
                }
                
                //login button
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                })
                .buttonStyle(CapsuleButtonStyle())
                .padding(.all, 15)
                
                //bottom-view OR
                HStack (spacing: 16) {
                    line
                    Text("or")
                        .fontWeight(.medium)
                    line
                }
                .foregroundStyle(.gray)
                
                //apple button
                Button(action: {
                    
                }, label: {
                    Label("Sign up with Apple", systemImage: "apple.logo")
                })
                .buttonStyle(
                    CapsuleButtonStyle(
                        bgColor: .black
                    )
                )
                .padding(.all, 15)
                
                //google button
                Button(action: {
                    
                }, label: {
                        HStack{
                            Image("google_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                            Text("Sign up with Google")
                        }
                })
                .buttonStyle(
                    CapsuleButtonStyle(
                        bgColor: .white,
                        textColor: .black,
                        hasBorder: true
                    )
                )
                .padding(.all, 15)
                
                //footer
                
            }
        }
        .ignoresSafeArea()
        .padding(.horizontal)
        .padding(.vertical, 8)
        
        
    }
}

#Preview {
    LoginView()
    
    // InputView(placeholder: "Email or Phone Number", text: .constant(""))
}

struct InputView: View {
    
    let placeholder:String
    var isSecuredField:Bool = false
    
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 12) {
            if isSecuredField {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
            Divider()
        }
    }
}

struct CapsuleButtonStyle: ButtonStyle {
    
    var bgColor: Color = .teal
    var textColor: Color = .white
    var hasBorder: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(textColor)
            .padding()
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .background(in: .capsule)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .overlay {
                hasBorder ?
                Capsule()
                    .stroke(.gray, lineWidth: 1): nil
            }
    }
}
