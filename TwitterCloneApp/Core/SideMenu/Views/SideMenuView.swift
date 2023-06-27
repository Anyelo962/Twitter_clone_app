//
//  SideMenuView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 9/6/23.
//

import SwiftUI

struct SideMenuView: View {
    
    
    @EnvironmentObject var viewmodel: AuthViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading,spacing: 4){
                    Text("Bruce Wayne")
                        .font(.headline)
                    Text("@Batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStasView()
                    .padding(.vertical)
            }.padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ viewModel in
                if(viewModel == .profile){
                    NavigationLink{
                        ProfileView()
                    }label: {
                        SideMenuOptionRow(viewModel: viewModel)
                    }
                }
                else if(viewModel == .logout){
                    Button{
                        viewmodel.signOut()
                    }label: {
                        SideMenuOptionRow(viewModel: viewModel)
                    }
                }
                else{
                    SideMenuOptionRow(viewModel: viewModel)
                }
            }
            
            Spacer()
        }
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
