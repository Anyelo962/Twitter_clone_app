//
//  RegistrationView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email:String = ""
    @State private var username:String = ""
    @State private var fullname:String = ""
    @State private var password:String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
 
//            NavigationStack {
//                NavigationLink(
//                    destination: ProfilePhotoSelectorView(),
//                    isActive: $viewModel.didAuthenticateUser,
//                    label: {
//
//                    }
//                )
//            }
            
            NavigationLink(
                destination: ProfilePhotoSelectorView(),
                isActive: $viewModel.didAuthenticateUser,
                label: {

                }
            )
            
            
            AuthenticationHeaderView(title1: "Get started.", title2: "Create your account")
            
            
            VStack(spacing:40){
                
                CustomTextField(imageName: "envelope", placeHolderName: "Email", text: $email)
                CustomTextField(imageName: "person", placeHolderName: "Username", text: $username)
                CustomTextField(imageName: "person", placeHolderName: "Full name", text: $fullname)
                CustomTextField(imageName: "lock", placeHolderName: "Password", text: $password, isSecureField: true)
                
            }.padding(32)
            
            Button{
                viewModel.Register(withEmail: email, password: password, username: username, fullname: fullname)

            }label: {
                Text("Sign up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }.shadow(color: .gray.opacity(0.5), radius:10, x: 0, y: 0)
            
            Spacer()
            
            Button{
                presentationMode.wrappedValue.dismiss()
            }label: {
                Text("Already have account?")
                    .font(.footnote)
                
                Text("Sign in")
                    .font(.footnote)
                    .fontWeight(.semibold)

            }.padding(.bottom, 32)
            
            
        }.ignoresSafeArea()
        
    }
}

//struct RegistrationView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegistrationView()
//    }
//}
