//
//  AuthenticationHeader.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    
    let title1:String
    let title2:String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
            }
            Text("\(title1)")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("\(title2)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                
        }.frame(height:260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(Color.white)
            .clipShape(RoundeShape(corners: [.bottomRight]))
        
    }
}

struct AuthenticationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeaderView(title1: "Hello.", title2: "Welcome back")
    }
}
