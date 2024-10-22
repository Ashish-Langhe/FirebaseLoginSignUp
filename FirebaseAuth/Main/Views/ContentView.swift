//
//  ContentView.swift
//  FirebaseAuth
//
//  Created by Ashish Langhe on 21/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String
    @State var password: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Let's Connect With US!")
            Spacer(minLength: 10)
            TextField("Enter Email", text: $email)
            SecureField("Password", text: $password)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView(email: "sasd@gmail.com", password: "34ertw23T")
}
