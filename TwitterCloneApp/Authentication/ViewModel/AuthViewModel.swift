//
//  AuthViewModel.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI
import Firebase



class AuthViewModel: ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticateUser = false
    
    init(){
        
        self.userSession = Auth.auth().currentUser
        
    }
    
    
    func Login(withEmail:String, password:String){
        Auth.auth().signIn(withEmail: withEmail, password: password){ result, error in
            if let error = error{
                print("DEBUG: Verify the user and email \(error.localizedDescription)")
            }
            
            guard let result = result?.user else {return }
            self.userSession = result
        }
    }
    
    func Register(withEmail:String, password:String, username:String, fullname:String){
        Auth.auth().createUser(withEmail: withEmail, password: password){ result, error in
            if let error = error{
                print("Faile to register error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return }
            
            //self.userSession = user
            
            let data = ["email":withEmail, "username":username.lowercased(), "fullname":fullname, "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){ _ in
                    self.didAuthenticateUser = true
                }
        }
    }
    
    
    func signOut(){
        userSession = nil
        try? Auth.auth().signOut()
    }
    
}
