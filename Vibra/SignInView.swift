//
//  SignInView.swift
//  Vibra
//
//  Created by Vitoria Romanini on 22/10/24.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("Sign In")
                .font(.largeTitle)
                .fontWeight(.bold)

            // Email TextField
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)

            // Password SecureField
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)

            // Sign-In Button (custom)
            Button(action: {
                // Handle sign-in logic here later
            }) {
                Text("Sign In")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 144 / 255, green: 238 / 255, blue: 144 / 255, opacity: 0.33))  // Semi-transparent green
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.horizontal, 50)
   
            }
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

