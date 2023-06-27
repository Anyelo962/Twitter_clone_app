//
//  UserStasView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 9/6/23.
//

import SwiftUI

struct UserStasView: View {
    var body: some View {
        HStack(spacing:24){
            
            HStack{
                Text("867").font(.subheadline).bold()
                Text("Following").font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack{
                Text("10.7M").font(.subheadline).bold()
                Text("Followers").font(.caption)
                    .foregroundColor(.gray)
                
            }

        }
        
    }
}

struct UserStasView_Previews: PreviewProvider {
    static var previews: some View {
        UserStasView()
    }
}
