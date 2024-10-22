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
        NavigationStack {
            ScrollView {
                VStack (
                    spacing: 16
                ) {
                    //logo
                    logo
                    
                    //title
                    header
                    
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
                    
                    //login button
                    loginButton
                    
                    //forgot password
                    forgotPassword
                    
                    Spacer()
                    
                    //bottom-view
                    bottomView
                }
            }
            .ignoresSafeArea()
            .padding(
                .horizontal
            )
            .padding(
                .vertical,
                8
            )
        }
    }
    
    private var logo: some View {
        Image(
            "login"
        )
        .resizable()
        .scaledToFit()
    }
    
    private var header: some View {
        Text(
            "Let's Connect With US!"
        )
        .font(
            .title2
        )
        .fontWeight(
            .semibold
        )
    }
    
    private var loginButton: some View {
        Button(action: {
            //ToDo
        },
               label: {
            Text(
                "Login"
            )
        })
        .buttonStyle(
            CapsuleButtonStyle()
        )
        .padding(
            .all,
            15
        )
    }
    
    private var forgotPassword: some View {
        HStack {
            Spacer()
            Button(action: {
                //ToDo
            },
                   label: {
                Text(
                    "Forgot Password?"
                )
                .foregroundStyle(
                    .gray
                )
                .fontWeight(
                    .medium
                )
                .font(
                    .subheadline
                )
            })
        }
    }
    private var orDivider: some View {
        HStack (
            spacing: 16
        ) {
            line
            Text(
                "or"
            )
            .fontWeight(
                .medium
            )
            line
        }
        .foregroundStyle(
            .gray
        )
    }
    
    private var appleButton: some View {
        Button(action: {
            //ToDo
        },
               label: {
            Label(
                "Sign up with Apple",
                systemImage: "apple.logo"
            )
        })
        .buttonStyle(
            CapsuleButtonStyle(
                bgColor: .black
            )
        )
        .padding(
            .all,
            15
        )
        
    }
    
    private var googleButton: some View {
        Button(action: {
            //ToDo
        },
               label: {
            HStack{
                Image(
                    "google_icon"
                )
                .resizable()
                .scaledToFit()
                .frame(
                    width: 15,
                    height: 15
                )
                Text(
                    "Sign up with Google"
                )
            }
        })
        .buttonStyle(
            CapsuleButtonStyle(
                bgColor: .white,
                textColor: .black,
                hasBorder: true
            )
        )
        .padding(
            .all,
            15
        )
    }
    
    private var footer: some View {
        NavigationLink(destination: {
            //ToDo
        },
                       label: {
            HStack {
                Text(
                    "Don't have an account?"
                )
                .foregroundStyle(
                    .black
                )
                Text(
                    "Sign Up"
                )
                .foregroundStyle(
                    .teal
                )
                .fontWeight(
                    .semibold
                )
            }
        })
    }
    
    private var bottomView: some View {
        VStack (spacing: 10) {
            orDivider
            appleButton
            googleButton
            footer
        }
    }
}

#Preview {
    LoginView()
}

struct InputView: View {
    
    let placeholder:String
    var isSecuredField:Bool = false
    
    @Binding var text: String
    
    var body: some View {
        VStack(
            spacing: 12
        ) {
            if isSecuredField {
                SecureField(
                    placeholder,
                    text: $text
                )
            } else {
                TextField(
                    placeholder,
                    text: $text
                )
            }
            Divider()
        }
    }
}


