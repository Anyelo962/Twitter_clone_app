//
//  TextArea.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 12/6/23.
//

import SwiftUI

struct TextArea: View {
    
    @Binding var text:String
    let placeHolder:String
    
    init(_ placeHolder:String, text: Binding<String> ){
        self.placeHolder = placeHolder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading){
            if(text.isEmpty){
                Text(placeHolder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }.font(.body)
    }
}

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
       // TextArea(placeholder: "Title", text: Binding<String>("Hello world") )
        HStack{
            
        }
    }
}
