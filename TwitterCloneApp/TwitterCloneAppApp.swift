//
//  TwitterCloneAppApp.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneAppApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }.environmentObject(viewModel)
        }
    }
}
