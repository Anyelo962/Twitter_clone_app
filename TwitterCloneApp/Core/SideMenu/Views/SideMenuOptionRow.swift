//
//  SideMenuOptionRow.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 12/6/23.
//

import SwiftUI

struct SideMenuOptionRow: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing:16){
            Image(systemName: viewModel.image)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.description)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }.frame(height:40)
            .padding(.horizontal)
    }
}

struct SideMenuOptionRow_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRow(viewModel: .profile)
    }
}
