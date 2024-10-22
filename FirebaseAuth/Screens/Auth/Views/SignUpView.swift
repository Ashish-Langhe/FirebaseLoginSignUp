//
//  SignUpView.swift
//  FirebaseAuth
//
//  Created by Ashish Langhe on 22/10/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 50) {
                
                Text("Please complete all information to create an account.")
                    .padding(.vertical)
                    .font(.headline).fontWeight(.medium)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                InputView(
                    placeholder: "Email or Phone Number",
                    text: $email
                )
              
                InputView(
                    placeholder: "Full Name",
                    text: $fullName
                )
                
                InputView(
                    placeholder: "Password",
                    isSecuredField: true,
                    text: $password
                )
               
                InputView(
                    placeholder: "Confirm Password",
                    isSecuredField: true,
                    text: $confirmPassword
                )
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Set up your account")
        
        
        
        Button(action: {
            //ToDo
        },
               label: {
            HStack{
                Text(
                    "Sign UP"
                )
            }
        })
        .buttonStyle(
            CapsuleButtonStyle(
                bgColor: .teal,
                textColor: .white,
                hasBorder: true
            )
        )
        .padding(
            .all,
            15
        )
        Spacer()
    }
}

#Preview {
    SignUpView()
}
