//
//  CustomTextField.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI

struct CustomTextField: View {
    
    let imageName:String
    let placeHolderName:String
    @Binding var text:String
    var isSecureField:Bool? = false
    var body: some View {

        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                
                if isSecureField ?? false {
                    SecureField(placeHolderName, text: $text)
                }else{
                    TextField(placeHolderName, text: $text)
                }
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

//struct CustomTextField_Previews: PreviewProvider {
//    @State private var text:String
//    static var previews: some View {
//        CustomTextField(imageName: "envelope",
//                        placeHolderName: "Email",
//                        isSecureField:false,
//                        text:.constant(""), true)
//    }
//}
