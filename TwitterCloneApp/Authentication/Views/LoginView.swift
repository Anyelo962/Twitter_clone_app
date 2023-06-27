//
//  LoginView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack{
   
            AuthenticationHeaderView(title1: "Hello", title2: "Welcome back")
            
            VStack(spacing:40){
                
                CustomTextField(imageName: "envelope",
                                placeHolderName: "Email",
                                text: $email)
                
                CustomTextField(imageName: "lock",
                                placeHolderName: "Password",
                                text: $password,
                                isSecureField: true)
                           
                
            }.padding(.horizontal,32)
                .padding(.top, 44)
            
            HStack{
                Spacer()
                NavigationLink {
                    Text("Reset password")
                } label: {
                    Text("Forgot password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing,24)
                }

            }
            
            Button{
                viewModel.Login(withEmail: email, password: password)
            }label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }.shadow(color: .gray.opacity(0.5), radius:10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                Text("Don't have account?")
                    .font(.footnote)
                
                Text("Sign up")
                    .font(.footnote)
                    .fontWeight(.semibold)

            }.padding(.bottom, 32)
                .foregroundColor(Color(.systemBlue))

        }.ignoresSafeArea()
            .navigationBarHidden(true)
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
