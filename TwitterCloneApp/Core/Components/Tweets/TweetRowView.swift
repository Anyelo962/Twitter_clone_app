//
//  TweetRowView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            //profile image
            HStack(alignment: .top,spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4){
                    //User info
                    HStack{
                        Text("Anyelo Vinzen")
                            .font(.subheadline).bold()
                        
                        Text("@Superman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("I like be happy")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            //Action button
            HStack{
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                })
            }.padding()
                .foregroundColor(.gray)
            
            Divider()
            
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
