//
//  ProfilePhotoSelectorView.swift
//  TwitterCloneApp
//
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            AuthenticationHeaderView(title1: "Create your account",
                                     title2: "Add a profile photo")
            
            Button{
                print("Pick image here...")
            }label: {
                Image("take_picture")
                    .resizable()
                   // .renderingMode(.template)
                    //.foregroundColor(Color(.systemPink))
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
